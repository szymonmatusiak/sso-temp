COMPILE = gcc -c $< -o $@ -std=99 -Wall
LINK = gcc -o $@ $^
all: run
	
run: lab1
	./lab1 
lab1: lab1.o f.o
	$(LINK)  
f.o: f.c f.h
	gcc  f.c -o f.o -std=c99 -Wall -c
	echo "kompilacja $@"
	sleep 5
	echo "kompilowano $@"
lab1.o: lab1.c f.c f.h
	gcc lab1.c -o lab1.o -std=c99 -Wall -c
	echo "kompilacja $@"
	sleep 5
	echo "kompilowano $@"

clean: 
	rm -rf *.o lab1

