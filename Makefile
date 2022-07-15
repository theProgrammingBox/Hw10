CC = g++
FLAGS = -std=c++14 -Wall -g
OBJS = hw10.o
FILES = hw10.cpp

all: hw10

hw10: $(OBJS)
	$(CC) $(FLAGS) $(OBJS) -o hw10

hw10.o: hw10.cpp
	$(CC) $(FLAGS) -c hw10.cpp

tar:
	tar -cf hw10.tar hw10.scr Makefile $(FILES)

clean:
	rm *.o *.tar *.scr hw10

sudoClean:
	rm *.o *.scr hw10