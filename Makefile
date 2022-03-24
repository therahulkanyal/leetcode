NAME=leetcode

CC=clang++
FLAGS=-Wall -Werror -Wextra
DEBUG_FLAGS=-g -fsanitize=address
BUILD_FOLDER=out
SRC=test1.cpp
LIBS=
OBJ=
RM =rm -rf

all: $(NAME)

$(NAME): $(SRC)
	$(CC) $(FLAGS) $(LIBS) $(SRC) -o $(BUILD_FOLDER)/$(NAME)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

run: re
	./$(NAME)

debug: fclean
	$(CC) $(FLAGS) $(DEBUG_FLAGS) $(LIBS) $(SRC) -o $(NAME)
