You can find this at [http://pan.baidu.com/s/1dDqyeo5](http://pan.baidu.com/s/1dDqyeo5)
===========

Part2
1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

1: Basic Building Blocks
2: Sequences of Numbers
3: Vectors
4: Missing Values
5: Subsetting Vectors
6: Matrices and Data Frames

Selection: 2

  |                                                                                                                                   |   0%

| In this lesson, you'll learn how to create sequences of numbers in R.

...

  |======                                                                                                                             |   5%

| The simplest way to create a sequence of numbers in R is by using the `:` operator. Type 1:20 to see how it works.

> 
> 1:20
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

| You are really on a roll!

  |============                                                                                                                       |   9%

| That gave us every integer between (and including) 1 and 20. We could also use it to create a sequence of real numbers. For example, try
| pi:10.

> pi:10
[1] 3.141593 4.141593 5.141593 6.141593 7.141593 8.141593 9.141593

| You are doing so well!

  |==================                                                                                                                 |  14%

| The result is a vector of real numbers starting with pi (3.142...) and increasing in increments of 1. The upper limit of 10 is never
| reached, since the next number in our sequence would be greater than 10.

...

  |========================                                                                                                           |  18%

| What happens if we do 15:1? Give it a try to find out.

> 15:1
 [1] 15 14 13 12 11 10  9  8  7  6  5  4  3  2  1

| You're the best!

  |==============================                                                                                                     |  23%

| It counted backwards in increments of 1! It's unlikely we'd want this behavior, but nonetheless it's good to know how it could happen.

...

  |====================================                                                                                               |  27%

| Remember that if you have questions about a particular R function, you can access its documentation with a question mark followed by the
| function name: ?function_name_here. However, in the case of an operator like the colon used above, you must enclose the symbol in
| backticks like this: ?`:`. (NOTE: The backtick (`) key is generally located in the top left corner of a keyboard, above the Tab key. If
| you don't have a backtick key, you can use regular quotes.)

...

  |==========================================                                                                                         |  32%

| Pull up the documentation for `:` now.

> ?`:`

| You're the best!

  |================================================                                                                                   |  36%

| Often, we'll desire more control over a sequence we're creating than what the `:` operator gives us. The seq() function serves this
| purpose.

...

  |======================================================                                                                             |  41%

| The most basic use of seq() does exactly the same thing as the `:` operator. Try seq(1, 20) to see this.

> 
> seq(1, 20)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

| You are quite good my friend!

  |============================================================                                                                       |  45%

| This gives us the same output as 1:20. However, let's say that instead we want a vector of numbers ranging from 0 to 10, incremented by
| 0.5. seq(0, 10, by=0.5) does just that. Try it out.

> seq(0, 10, by=0.5)
 [1]  0.0  0.5  1.0  1.5  2.0  2.5  3.0  3.5  4.0  4.5  5.0  5.5  6.0  6.5  7.0  7.5  8.0  8.5  9.0  9.5 10.0

| You're the best!

  |==================================================================                                                                 |  50%

| Or maybe we don't care what the increment is and we just want a sequence of 30 numbers between 5 and 10. seq(5, 10, length=30) does the
| trick. Give it shot now and store the result in a new variable called my_seq.

> my_seq<-seq(5, 10, length=30) 

| You're the best!

  |=======================================================================                                                            |  55%

| To confirm that my_seq has length 30, we can use the length() function. Try it now.

> 
> length(my_seq)
[1] 30

| You are doing so well!

  |=============================================================================                                                      |  59%

| Let's pretend we don't know the length of my_seq, but we want to generate a sequence of integers from 1 to N, where N represents the
| length of the my_seq vector. In other words, we want a new vector (1, 2, 3, ...) that is the same length as my_seq.

...

  |===================================================================================                                                |  64%

| There are several ways we could do this. One possibility is to combine the `:` operator and the length() function like this:
| 1:length(my_seq). Give that a try.

> 1:length(my_seq)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30

| You got it!

  |=========================================================================================                                          |  68%

| Another option is to use seq(along = my_seq). Give that a try.

> seq(along = my_seq)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30

| You are quite good my friend!

  |===============================================================================================                                    |  73%

| However, as is the case with many common tasks, R has a separate built-in function for this purpose called seq_along(). Type
| seq_along(my_seq) to see it in action.

> seq_along(my_seq) 
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30

| Great job!

  |=====================================================================================================                              |  77%

| There are often several approaches to solving the same problem, particularly in R. Simple approaches that involve less typing are
| generally best. It's also important for your code to be readable, so that you and others can figure out what's going on without too much
| hassle.

...

  |===========================================================================================================                        |  82%

| If R has a built-in function for a particular task, it's likely that function is highly optimized for that purpose and is your best
| option. As you become a more advanced R programmer, you'll design your own functions to perform tasks when there are no better options.
| We'll explore writing your own functions in future lessons.

...

  |=================================================================================================================                  |  86%

| One more function related to creating sequences of numbers is rep(), which stands for 'replicate'. Let's look at a few uses.

...

  |=======================================================================================================================            |  91%

| If we're interested in creating a vector that contains 40 zeros, we can use rep(0, times = 40). Try it out.

> rep(0, times = 40)
 [1] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

| Keep up the great work!

  |=============================================================================================================================      |  95%

| If instead we want our vector to contain 10 repetitions of the vector (0, 1, 2), we can do rep(c(0, 1, 2), times = 10). Go ahead.

> rep(c(0, 1, 2), times = 10)
 [1] 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2

| Excellent job!

  |===================================================================================================================================| 100%

| Finally, let's say that rather than repeating the vector (0, 1, 2) over and over again, we want our vector to contain 10 zeros, then 10
| ones, then 10 twos. We can do this with the `each` argument. Try rep(c(0, 1, 2), each = 10).

> rep(c(0, 1, 2), each = 10)
 [1] 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2

| You are doing so well!

Part3
1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

1: Basic Building Blocks
2: Sequences of Numbers
3: Vectors
4: Missing Values
5: Subsetting Vectors
6: Matrices and Data Frames

Selection: 3

  |                                                                                                                                   |   0%

| The simplest and most common data structure in R is the vector.

...

  |====                                                                                                                               |   3%

| Vectors come in two different flavors: atomic vectors and lists. An atomic vector contains exactly one data type, whereas a list may
| contain multiple data types. We'll explore atomic vectors further before we get to lists.

...

  |=======                                                                                                                            |   5%

| In previous lessons, we dealt entirely with numeric vectors, which are one type of atomic vector. Other types of atomic vectors include
| logical, character, integer, and complex. In this lesson, we'll take a closer look at logical and character vectors.

...

  |===========                                                                                                                        |   8%

| Logical vectors can contain the values TRUE, FALSE, and NA (for 'not available'). These values are generated as the result of logical
| 'conditions'. Let's experiment with some simple conditions.

...

  |==============                                                                                                                     |  11%

| First, create a numeric vector num_vect that contains the values 0.5, 55, -10, and 6.

> num_vect <- c( 0.5, 55, -10, 6)

| Keep up the great work!

  |==================                                                                                                                 |  14%

| Now, create a variable called tf that gets the result of num_vect < 1, which is read as 'num_vect is less than 1'.

> tf <- num_vect < 1

| Nice work!

  |=====================                                                                                                              |  16%

| What do you think tf will look like?

1: a single logical value
2: a vector of 4 logical values

Selection: 2

| Great job!

  |=========================                                                                                                          |  19%

| Print the contents of tf now.

> tf
[1]  TRUE FALSE  TRUE FALSE

| Excellent job!

  |============================                                                                                                       |  22%

| The statement num_vect < 1 is a condition and tf tells us whether each corresponding element of our numeric vector num_vect satisfies this
| condition.

...

  |================================                                                                                                   |  24%

| The first element of num_vect is 0.5, which is less than 1 and therefore the statement 0.5 < 1 is TRUE. The second element of num_vect is
| 55, which is greater than 1, so the statement 55 < 1 is FALSE. The same logic applies for the third and fourth elements.

...

  |===================================                                                                                                |  27%

| Let's try another. Type num_vect >= 6 without assigning the result to a new variable.

> num_vect >= 6
[1] FALSE  TRUE FALSE  TRUE

| You got it right!

  |=======================================                                                                                            |  30%

| This time, we are asking whether each individual element of num_vect is greater than OR equal to 6. Since only 55 and 6 are greater than
| or equal to 6, the second and fourth elements of the result are TRUE and the first and third elements are FALSE.

...

  |==========================================                                                                                         |  32%

| The `<` and `>=` symbols in these examples are called 'logical operators'. Other logical operators include `>`, `<=`, `==` for exact
| equality, and `!=` for inequality.

...

  |==============================================                                                                                     |  35%

| If we have two logical expressions, A and B, we can ask whether at least one is TRUE with A | B (logical 'or' a.k.a. 'union') or whether
| they are both TRUE with A & B (logical 'and' a.k.a. 'intersection'). Lastly, !A is the negation of A and is TRUE when A is FALSE and vice
| versa.

...

  |==================================================                                                                                 |  38%

| It's a good idea to spend some time playing around with various combinations of these logical operators until you get comfortable with
| their use. We'll do a few examples here to get you started.

...

  |=====================================================                                                                              |  41%

| Try your best to predict the result of each of the following statements. You can use pencil and paper to work them out if it's helpful. If
| you get stuck, just guess and you've got a 50% chance of getting the right answer!

...

  |=========================================================                                                                          |  43%

| (3 > 5) & (4 == 4)

1: FALSE
2: TRUE

Selection: 1

| Excellent job!

  |============================================================                                                                       |  46%

| (TRUE == TRUE) | (TRUE == FALSE)

1: TRUE
2: FALSE

Selection: 1

| You got it right!

  |================================================================                                                                   |  49%

| ((111 >= 111) | !(TRUE)) & ((4 + 1) == 5)

1: TRUE
2: FALSE

Selection: 1

| You are quite good my friend!

  |===================================================================                                                                |  51%

| Don't worry if you found these to be tricky. They're supposed to be. Working with logical statements in R takes practice, but your efforts
| will be rewarded in future lessons (e.g. subsetting and control structures).

...

  |=======================================================================                                                            |  54%

| Character vectors are also very common in R. Double quotes are used to distinguish character objects, as in the following example.

...

  |==========================================================================                                                         |  57%

| Create a character vector that contains the following words: "My", "name", "is". Remember to enclose each word in its own set of double
| quotes, so that R knows they are character strings. Store the vector in a variable called my_char.

> my_char <- c("My","name","is")

| You are doing so well!

  |==============================================================================                                                     |  59%

| Print the contents of my_char to see what it looks like.

> my_char
[1] "My"   "name" "is"  

| You got it!

  |=================================================================================                                                  |  62%

| Right now, my_char is a character vector of length 3. Let's say we want to join the elements of my_char together into one continuous
| character string (i.e. a character vector of length 1). We can do this using the paste() function.

...

  |=====================================================================================                                              |  65%

| Type paste(my_char, collapse = " ") now. Make sure there's a space between the double quotes in the `collapse` argument. You'll see why in
| a second.

> paste(my_char, collapse = " ") 
[1] "My name is"

| That's a job well done!

  |=========================================================================================                                          |  68%

| The `collapse` argument to the paste() function tells R that when we join together the elements of the my_char character vector, we'd like
| to separate them with single spaces.

...

  |============================================================================================                                       |  70%

| It seems that we're missing something.... Ah, yes! Your name!

...

  |================================================================================================                                   |  73%

| To add (or 'concatenate') your name to the end of my_char, use the c() function like this: c(my_char, "your_name_here"). Place your name
| in double quotes where I've put "your_name_here". Try it now, storing the result in a new variable called my_name.

> c(my_char, "kk")
[1] "My"   "name" "is"   "kk"  

| You almost had it, but not quite. Try again. Or, type info() for more options.

| Tack your name on to the end of the my_char vector using the c() function.  Be sure to assign the result to a new variable called my_name.
| If your name was "Swirl", you would type my_name <- c(my_char, "Swirl").

> c(my_char, "mengnan")
[1] "My"      "name"    "is"      "mengnan"

| You're close...I can feel it! Try it again. Or, type info() for more options.

| Tack your name on to the end of the my_char vector using the c() function.  Be sure to assign the result to a new variable called my_name.
| If your name was "Swirl", you would type my_name <- c(my_char, "Swirl").

> c(my_char, "Swirl")
[1] "My"    "name"  "is"    "Swirl"

| Almost! Try again. Or, type info() for more options.

| Tack your name on to the end of the my_char vector using the c() function.  Be sure to assign the result to a new variable called my_name.
| If your name was "Swirl", you would type my_name <- c(my_char, "Swirl").

> my_name <- c(my_char,"qq")

| Great job!

  |===================================================================================================                                |  76%

| Take a look at the contents of my_name.

> my_name
[1] "My"   "name" "is"   "qq"  

| You got it!

  |=======================================================================================================                            |  78%

| Now, use the paste() function once more to join the words in my_name together into a single character string. Don't forget to say collapse
| = " "!

> paste(my_name,collapse = " ")
[1] "My name is qq"

| That's correct!

  |==========================================================================================================                         |  81%

| In this example, we used the paste() function to collapse the elements of a single character vector. paste() can also be used to join the
| elements of multiple character vectors.

...

  |==============================================================================================================                     |  84%

| In the simplest case, we can join two character vectors that are each of length 1 (i.e. join two words). Try paste("Hello", "world!", sep
| = " "), where the `sep` argument tells R that we want to separate the joined elements with a single space.

> paste("Hello", "world!", sep = " ")
[1] "Hello world!"

| You nailed it! Good job!

  |=================================================================================================================                  |  86%

| For a slightly more complicated example, we can join two vectors, each of length 3. Use paste() to join the integer vector 1:3 with the
| character vector c("X", "Y", "Z"). This time, use sep = "" to leave no space between the joined elements.

> paste(1:3, c("X", "Y", "Z"),sep = "")
[1] "1X" "2Y" "3Z"

| You got it!

  |=====================================================================================================================              |  89%

| What do you think will happen if our vectors are of different length? (Hint: we talked about this in a previous lesson.)

...

  |========================================================================================================================           |  92%

| Vector recycling! Try paste(LETTERS, 1:4, sep = "-"), where LETTERS is a predefined variable in R containing a character vector of all 26
| letters in the English alphabet.

> paste(LETTERS, 1:4, sep = "-")
 [1] "A-1" "B-2" "C-3" "D-4" "E-1" "F-2" "G-3" "H-4" "I-1" "J-2" "K-3" "L-4" "M-1" "N-2" "O-3" "P-4" "Q-1" "R-2" "S-3" "T-4" "U-1" "V-2"
[23] "W-3" "X-4" "Y-1" "Z-2"

| You nailed it! Good job!

  |============================================================================================================================       |  95%

| Since the character vector LETTERS is longer than the numeric vector 1:4, R simply recycles, or repeats, 1:4 until it matches the length
| of LETTERS.

...

  |===============================================================================================================================    |  97%

| Also worth noting is that the numeric vector 1:4 gets 'coerced' into a character vector by the paste() function.

...

  |===================================================================================================================================| 100%

| We'll discuss coercion in another lesson, but all it really means that the numbers 1, 2, 3, and 4 in the output above are no longer
| numbers to R, but rather characters "1", "2", "3", and "4".

...

Part5
1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

1: Basic Building Blocks
2: Sequences of Numbers
3: Vectors
4: Missing Values
5: Subsetting Vectors
6: Matrices and Data Frames

Selection: 5

  |                                                                                                                                   |   0%

| In this lesson, we'll see how to extract elements from a vector based on some conditions that we specify.

...

  |===                                                                                                                                |   3%

| For example, we may only be interested in the first 20 elements of a vector, or only the elements that are not NA, or only those that are
| positive or correspond to a specific variable of interest. By the end of this lesson, you'll know how to handle each of these scenarios.

...

  |=======                                                                                                                            |   5%

| I've created for you a vector called x that contains a random ordering of 20 numbers (from a standard normal distribution) and 20 NAs.
| Type x now to see what it looks like.

> x
 [1] -0.72710135          NA          NA          NA          NA  1.72500426  0.04650719  1.05771270          NA          NA          NA
[12]  0.56231459          NA -1.43583067          NA  2.05595356  0.02575668 -0.57366218  0.94364110          NA  0.08617605 -1.30075176
[23]  0.21624823          NA          NA          NA          NA          NA -0.88428489 -0.24683732  0.80597510  2.47432768          NA
[34]          NA -0.91037672  0.04124237          NA          NA          NA  2.33516583

| Keep up the great work!

  |==========                                                                                                                         |   8%

| The way you tell R that you want to select some particular elements (i.e. a 'subset') from a vector is by placing an 'index vector' in
| square brackets immediately following the name of the vector.

...

  |==============                                                                                                                     |  11%

| For a simple example, try x[1:10] to view the first ten elements of x.

> x[1:10]
 [1] -0.72710135          NA          NA          NA          NA  1.72500426  0.04650719  1.05771270          NA          NA

| You are really on a roll!

  |=================                                                                                                                  |  13%

| Index vectors come in four different flavors -- logical vectors, vectors of positive integers, vectors of negative integers, and vectors
| of character strings -- each of which we'll cover in this lesson.

...

  |=====================                                                                                                              |  16%

| Let's start by indexing with logical vectors. One common scenario when working with real-world data is that we want to extract all
| elements of a vector that are not NA (i.e. missing data). Recall that is.na(x) yields a vector of logical values the same length as x,
| with TRUEs corresponding to NA values in x and FALSEs corresponding to non-NA values in x.

...

  |========================                                                                                                           |  18%

| What do you think x[is.na(x)] will give you?

1: A vector of TRUEs and FALSEs
2: A vector of length 0
3: A vector with no NAs
4: A vector of all NAs

Selection: 
Enter an item from the menu, or 0 to exit
Selection: 4

| You are amazing!

  |============================                                                                                                       |  21%

| Prove it to yourself by typing x[is.na(x)].

> 
> x[is.na(x)]
 [1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA

| You are amazing!

  |===============================                                                                                                    |  24%

| Recall that `!` gives us the negation of a logical expression, so !is.na(x) can be read as 'is not NA'. Therefore, if we want to create a
| vector called y that contains all of the non-NA values from x, we can use y <- x[!is.na(x)]. Give it a try.

> y <- x[!is.na(x)]

| You nailed it! Good job!

  |==================================                                                                                                 |  26%

| Print y to the console.

> y
 [1] -0.72710135  1.72500426  0.04650719  1.05771270  0.56231459 -1.43583067  2.05595356  0.02575668 -0.57366218  0.94364110  0.08617605
[12] -1.30075176  0.21624823 -0.88428489 -0.24683732  0.80597510  2.47432768 -0.91037672  0.04124237  2.33516583

| You got it!

  |======================================                                                                                             |  29%

| Now that we've isolated the non-missing values of x and put them in y, we can subset y as we please.

...

  |=========================================                                                                                          |  32%

| Recall that the expression y > 0 will give us a vector of logical values the same length as y, with TRUEs corresponding to values of y
| that are greater than zero and FALSEs corresponding to values of y that are less than or equal to zero. What do you think y[y > 0] will
| give you?

1: A vector of length 0
2: A vector of all the negative elements of y
3: A vector of all the positive elements of y
4: A vector of all NAs
5: A vector of TRUEs and FALSEs

Selection: 3

| You are really on a roll!

  |=============================================                                                                                      |  34%

| Type y[y > 0] to see that we get all of the positive elements of y, which are also the positive elements of our original vector x.

> y[y > 0]
 [1] 1.72500426 0.04650719 1.05771270 0.56231459 2.05595356 0.02575668 0.94364110 0.08617605 0.21624823 0.80597510 2.47432768 0.04124237
[13] 2.33516583

| You are quite good my friend!

  |================================================                                                                                   |  37%

| You might wonder why we didn't just start with x[x > 0] to isolate the positive elements of x. Try that now to see why.

> x[x > 0]
 [1]         NA         NA         NA         NA 1.72500426 0.04650719 1.05771270         NA         NA         NA 0.56231459         NA
[13]         NA 2.05595356 0.02575668 0.94364110         NA 0.08617605 0.21624823         NA         NA         NA         NA         NA
[25] 0.80597510 2.47432768         NA         NA 0.04124237         NA         NA         NA 2.33516583

| Excellent job!

  |====================================================                                                                               |  39%

| Since NA is not a value, but rather a placeholder for an unknown quantity, the expression NA > 0 evaluates to NA. Hence we get a bunch of
| NAs mixed in with our positive numbers when we do this.

...

  |=======================================================                                                                            |  42%

| Combining our knowledge of logical operators with our new knowledge of subsetting, we could do this -- x[!is.na(x) & x > 0]. Try it out.

> 
> x[!is.na(x) & x > 0]
 [1] 1.72500426 0.04650719 1.05771270 0.56231459 2.05595356 0.02575668 0.94364110 0.08617605 0.21624823 0.80597510 2.47432768 0.04124237
[13] 2.33516583

| You are doing so well!

  |===========================================================                                                                        |  45%

| In this case, we request only values of x that are both non-missing AND greater than zero.

...

  |==============================================================                                                                     |  47%

| I've already shown you how to subset just the first ten values of x using x[1:10]. In this case, we're providing a vector of positive
| integers inside of the square brackets, which tells R to return only the elements of x numbered 1 through 10.

...

  |==================================================================                                                                 |  50%

| Many programming languages use what's called 'zero-based indexing', which means that the first element of a vector is considered element
| 0. R uses 'one-based indexing', which (you guessed it!) means the first element of a vector is considered element 1.

...

  |=====================================================================                                                              |  53%

| Can you figure out how we'd subset the 3rd, 5th, and 7th elements of x? Hint -- Use the c() function to specify the element numbers as a
| numeric vector.

> x[c(3,5,7)]
[1]         NA         NA 0.04650719

| Great job!

  |========================================================================                                                           |  55%

| It's important that when using integer vectors to subset our vector x, we stick with the set of indexes {1, 2, ..., 40} since x only has
| 40 elements. What happens if we ask for the zeroth element of x (i.e. x[0])? Give it a try.

> x[0]
numeric(0)

| You're the best!

  |============================================================================                                                       |  58%

| As you might expect, we get nothing useful. Unfortunately, R doesn't prevent us from doing this. What if we ask for the 3000th element of
| x? Try it out.

> x(3000)
Error: could not find function "x"
> x[3000]
[1] NA

| You are quite good my friend!

  |===============================================================================                                                    |  61%

| Again, nothing useful, but R doesn't prevent us from asking for it. This should be a cautionary tale. You should always make sure that
| what you are asking for is within the bounds of the vector you're working with.

...

  |===================================================================================                                                |  63%

| What if we're interested in all elements of x EXCEPT the 2nd and 10th? It would be pretty tedious to construct a vector containing all
| numbers 1 through 40 EXCEPT 2 and 10.

...

  |======================================================================================                                             |  66%

| Luckily, R accepts negative integer indexes. Whereas x[c(2, 10)] gives us ONLY the 2nd and 10th elements of x, x[c(-2, -10)] gives us all
| elements of x EXCEPT for the 2nd and 10 elements.  Try x[c(-2, -10)] now to see this.

> 
> x[c(-2,-10)]
 [1] -0.72710135          NA          NA          NA  1.72500426  0.04650719  1.05771270          NA          NA  0.56231459          NA
[12] -1.43583067          NA  2.05595356  0.02575668 -0.57366218  0.94364110          NA  0.08617605 -1.30075176  0.21624823          NA
[23]          NA          NA          NA          NA -0.88428489 -0.24683732  0.80597510  2.47432768          NA          NA -0.91037672
[34]  0.04124237          NA          NA          NA  2.33516583

| You are quite good my friend!

  |==========================================================================================                                         |  68%

| A shorthand way of specifying multiple negative numbers is to put the negative sign out in front of the vector of positive numbers. Type
| x[-c(2, 10)] to get the exact same result.

> x[-c(2,10)]
 [1] -0.72710135          NA          NA          NA  1.72500426  0.04650719  1.05771270          NA          NA  0.56231459          NA
[12] -1.43583067          NA  2.05595356  0.02575668 -0.57366218  0.94364110          NA  0.08617605 -1.30075176  0.21624823          NA
[23]          NA          NA          NA          NA -0.88428489 -0.24683732  0.80597510  2.47432768          NA          NA -0.91037672
[34]  0.04124237          NA          NA          NA  2.33516583

| You nailed it! Good job!

  |=============================================================================================                                      |  71%

| So far, we've covered three types of index vectors -- logical, positive integer, and negative integer. The only remaining type requires us
| to introduce the concept of 'named' elements.

...

  |=================================================================================================                                  |  74%

| Create a numeric vector with three named elements using vect <- c(foo = 11, bar = 2, norf = NA).

> vect <- c(foo = 11, bar = 2, norf = NA)

| You are really on a roll!

  |====================================================================================================                               |  76%

| When we print vect to the console, you'll see that each element has a name. Try it out.

> vect
 foo  bar norf 
  11    2   NA 

| You are really on a roll!

  |=======================================================================================================                            |  79%

| We can also get the names of vect by passing vect as an argument to the names() function. Give that a try.

> name(foo)
Error: could not find function "name"
> name(vect)
Error: could not find function "name"
> names(vect)
[1] "foo"  "bar"  "norf"

| You are quite good my friend!

  |===========================================================================================================                        |  82%

| Alternatively, we can create an unnamed vector vect2 with c(11, 2, NA). Do that now.

> 
> vect2 <- c(11,2,NA)

| You got it right!

  |==============================================================================================================                     |  84%

| Then, we can add the `names` attribute to vect2 after the fact with names(vect2) <- c("foo", "bar", "norf"). Go ahead.

> names(vect) <- c("foo", "bar", "norf")

| Nice try, but that's not exactly what I was hoping for. Try again. Or, type info() for more options.

| Add names to vect2 with names(vect2) <- c("foo", "bar", "norf").

> vect
 foo  bar norf 
  11    2   NA 

| You're close...I can feel it! Try it again. Or, type info() for more options.

| Add names to vect2 with names(vect2) <- c("foo", "bar", "norf").

> names(vect2) <- c("foo", "bar", "norf")

| You nailed it! Good job!

  |==================================================================================================================                 |  87%

| Now, let's check that vect and vect2 are the same by passing them as arguments to the identical() function.

> identical(vect,vect2)
[1] TRUE

| That's a job well done!

  |=====================================================================================================================              |  89%

| Indeed, vect and vect2 are identical named vectors.

...

  |=========================================================================================================================          |  92%

| Now, back to the matter of subsetting a vector by named elements. Which of the following commands do you think would give us the second
| element of vect?

1: vect["bar"]
2: vect[bar]
3: vect["2"]

Selection: 
Enter an item from the menu, or 0 to exit
Selection: 1

| That's correct!

  |============================================================================================================================       |  95%

| Now, try it out.

> vect["bar"]
bar 
  2 

| You're the best!

  |================================================================================================================================   |  97%

| Likewise, we can specify a vector of names with vect[c("foo", "bar")]. Try it out.

> vect[c("foo","bar")]
foo bar 
 11   2 

| You are really on a roll!

  |===================================================================================================================================| 100%

| Now you know all four methods of subsetting data from vectors. Different approaches are best in different scenarios and when in doubt, try
| it out!

Part6
1: R Programming
2: Take me to the swirl course repository!

Selection: 
Enter an item from the menu, or 0 to exit
Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

1: Basic Building Blocks
2: Sequences of Numbers
3: Vectors
4: Missing Values
5: Subsetting Vectors
6: Matrices and Data Frames

Selection: 6

  |                                                                                                                                   |   0%

| In this lesson, we'll cover matrices and data frames. Both represent 'rectangular' data types, meaning that they are used to store tabular
| data, with rows and columns.

...

  |====                                                                                                                               |   3%

| The main difference, as you'll see, is that matrices can only contain a single class of data, while data frames can consist of many
| different classes of data.

...

  |=======                                                                                                                            |   6%

| Let's create a vector containing the numbers 1 through 20 using the `:` operator. Store the result in a variable called my_vector.

> my_vector <- 1:20

| You are quite good my friend!

  |===========                                                                                                                        |   9%

| View the contents of the vector you just created.

> my_vector
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

| You're the best!

  |===============                                                                                                                    |  11%

| The dim() function tells us the 'dimensions' of an object. What happens if we do dim(my_vector)? Give it try.

> dim(my_vector)
NULL

| You got it right!

  |===================                                                                                                                |  14%

| Clearly, that's not very helpful! Since my_vector is a vector, it doesn't have a `dim` attribute (so it's just NULL), but we can find its
| length using the length() function. Try that now.

> length(my_vector)
[1] 20

| You nailed it! Good job!

  |======================                                                                                                             |  17%

| Ah! That's what we wanted. But, what happens if we give my_vector a `dim` attribute? Let's give it a try. Type dim(my_vector) <- c(4, 5).

> dim(my_vector) <- c(4, 5)

| Nice work!

  |==========================                                                                                                         |  20%

| It's okay if that last command seemed a little strange to you. It should! The dim() function allows you to get OR set the `dim` attribute
| for an R object. In this case, we assigned the value c(4, 5) to the `dim` attribute of my_vector.

...View(my_vector)

  |==============================                                                                                                     |  23%

| Use dim(my_vector) to confirm that we've set the `dim` attribute correctly.

> View(my_vector)

| Almost! Try again. Or, type info() for more options.

| Just type dim(my_vector) to make sure the `dim` attribute has been set.

> dim(my_vector)
[1] 4 5

| That's a job well done!

  |==================================                                                                                                 |  26%

| Another way to see this is by calling the attributes() function on my_vector. Try it now.

> attributes(my_vector)
$dim
[1] 4 5


| Excellent job!

  |=====================================                                                                                              |  29%

| Just like in math class, when dealing with a 2-dimensional object (think rectangular table), the first number is the number of rows and
| the second is the number of columns. Therefore, we just gave my_vector 4 rows and 5 columns.

...

  |=========================================                                                                                          |  31%

| But, wait! That doesn't sound like a vector any more. Well, it's not. Now it's a matrix. View the contents of my_vector now to see what it
| looks like.

> my_vector
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    5    9   13   17
[2,]    2    6   10   14   18
[3,]    3    7   11   15   19
[4,]    4    8   12   16   20

| You are really on a roll!

  |=============================================                                                                                      |  34%

| Now, let's confirm it's actually a matrix by using the class() function. Type class(my_vector) to see what I mean.

> class(my_vector)
[1] "matrix"

| Excellent job!

  |=================================================                                                                                  |  37%

| Sure enough, my_vector is now a matrix. We should store it in a new variable that helps us remember what it is. Store the value of
| my_vector in a new variable called my_matrix.

> my_matrix<- my_vector

| Excellent job!

  |====================================================                                                                               |  40%

| The example that we've used so far was meant to illustrate the point that a matrix is simply an atomic vector with a dimension attribute.
| A more direct method of creating the same matrix uses the matrix() function.

...

  |========================================================                                                                           |  43%

| Bring up the help file for the matrix() function now using the `?` function.

> ?matrix

| You got it right!

  |============================================================                                                                       |  46%

| Now, look at the documentation for the matrix function and see if you can figure out how to create a matrix containing the same numbers
| (1-20) and dimensions (4 rows, 5 columns) by calling the matrix() function. Store the result in a variable called my_matrix2.

> my_matrix2<-matrix(1:20,nrow = 4, ncol = 5)

| Nice work!

  |================================================================                                                                   |  49%

| Finally, let's confirm that my_matrix and my_matrix2 are actually identical. The identical() function will tell us if its first two
| arguments are the same. Try it out.

> identical(my_matrix,my_matrix2)
[1] TRUE

| You are quite good my friend!

  |===================================================================                                                                |  51%

| Now, imagine that the numbers in our table represent some measurements from a clinical experiment, where each row represents one patient
| and each column represents one variable for which measurements where taken.

...3

  |=======================================================================                                                            |  54%

| We may want to label the rows, so that we know which numbers belong to each patient in the experiment. One way to do this is to add a
| column to the matrix, which contains the names of all four people.

...

  |===========================================================================                                                        |  57%

| Let's start by creating a character vector containing the names of our patients -- Bill, Gina, Kelly, and Sean. Remember that double
| quotes tell R that something is a character string. Store the result in a variable called patients.

> patients <- c("Bill","Gina","Kelly","Sean")

| That's correct!

  |===============================================================================                                                    |  60%

| Now we'll use the cbind() function to 'combine columns'. Don't worry about storing the result in a new variable. Just call cbind() with
| two arguments -- the patients vector and my_matrix.

> cbind(my_matrix,patients)
                            patients
[1,] "1" "5" "9"  "13" "17" "Bill"  
[2,] "2" "6" "10" "14" "18" "Gina"  
[3,] "3" "7" "11" "15" "19" "Kelly" 
[4,] "4" "8" "12" "16" "20" "Sean"  

| Nice try, but that's not exactly what I was hoping for. Try again. Or, type info() for more options.

| Type cbind(patients, my_matrix) to add the names of our patients to the matrix of numbers.

> cbind(patients,my_matrix)
     patients                       
[1,] "Bill"   "1" "5" "9"  "13" "17"
[2,] "Gina"   "2" "6" "10" "14" "18"
[3,] "Kelly"  "3" "7" "11" "15" "19"
[4,] "Sean"   "4" "8" "12" "16" "20"

| That's a job well done!

  |==================================================================================                                                 |  63%

| Something is fishy about our result! It appears that combining the character vector with our matrix of numbers caused everything to be
| enclosed in double quotes. This means we're left with a matrix of character strings, which is no good.

...

  |======================================================================================                                             |  66%

| If you remember back to the beginning of this lesson, I told you that matrices can only contain ONE class of data. Therefore, when we
| tried to combine a character vector with a numeric matrix, R was forced to 'coerce' the numbers to characters, hence the double quotes.

...

  |==========================================================================================                                         |  69%

| This is called 'implicit coercion', because we didn't ask for it. It just happened. But why didn't R just convert the names of our
| patients to numbers? I'll let you ponder that question on your own.

...

  |==============================================================================================                                     |  71%

| So, we're still left with the question of how to include the names of our patients in the table without destroying the integrity of our
| numeric data. Try the following -- my_data <- data.frame(patients, my_matrix)

> my_data <- data.frame(patients,my_matrix)

| Keep up the great work!

  |=================================================================================================                                  |  74%

| Now view the contents of my_data to see what we've come up with.

> my_data
  patients X1 X2 X3 X4 X5
1     Bill  1  5  9 13 17
2     Gina  2  6 10 14 18
3    Kelly  3  7 11 15 19
4     Sean  4  8 12 16 20

| That's correct!

  |=====================================================================================================                              |  77%

| It looks like the data.frame() function allowed us to store our character vector of names right alongside our matrix of numbers. That's
| exactly what we were hoping for!

...

  |=========================================================================================================                          |  80%

| Behind the scenes, the data.frame() function takes any number of arguments and returns a single object of class `data.frame` that is
| composed of the original objects.

...

  |=============================================================================================================                      |  83%

| Let's confirm this by calling the class() function on our newly created data frame.

> 
> 
> 
> class(my_data)
[1] "data.frame"

| Keep up the great work!

  |================================================================================================================                   |  86%

| It's also possible to assign names to the individual rows and columns of a data frame, which presents another possible way of determining
| which row of values in our table belongs to each patient.

...

  |====================================================================================================================               |  89%

| However, since we've already solved that problem, let's solve a different problem by assigning names to the columns of our data frame so
| that we know what type of measurement each column represents.

...

  |========================================================================================================================           |  91%

| Since we have six columns (including patient names), we'll need to first create a vector containing one element for each column. Create a
| character vector called cnames that contains the following values (in order) -- "patient", "age", "weight", "bp", "rating", "test".

> 
> cnames<-c("patient","age","weight","bp","rating","test")

| You're the best!

  |============================================================================================================================       |  94%

| Now, use the colnames() function to set the `colnames` attribute for our data frame. This is similar to the way we used the dim() function
| earlier in this lesson.

> colnames(cnames,my_data)
Error in if (do.NULL) NULL else if (nc > 0L) paste0(prefix, seq_len(nc)) else character() : 
  argument is not interpretable as logical
In addition: Warning message:
In if (do.NULL) NULL else if (nc > 0L) paste0(prefix, seq_len(nc)) else character() :
  the condition has length > 1 and only the first element will be used
> colnames(cnames,my_matrix)
NULL
Warning message:
In if (do.NULL) NULL else if (nc > 0L) paste0(prefix, seq_len(nc)) else character() :
  the condition has length > 1 and only the first element will be used

| Almost! Try again. Or, type info() for more options.

| Try colnames(my_data) <- cnames.

> colnames(my_data) <- cnames

| You are amazing!

  |===============================================================================================================================    |  97%

| Let's see if that got the job done. Print the contents of my_data.

> my_data
  patient age weight bp rating test
1    Bill   1      5  9     13   17
2    Gina   2      6 10     14   18
3   Kelly   3      7 11     15   19
4    Sean   4      8 12     16   20

| You are doing so well!

  |===================================================================================================================================| 100%

| In this lesson, you learned the basics of working with two very important and common data structures -- matrices and data frames. There's
| much more to learn and we'll be covering more advanced topics, particularly with respect to data frames, in future lessons.

...

| Are you currently enrolled in the Coursera course associated with this lesson?

1: Yes
2: No

Selection: 1

| Would you like me to notify Coursera that you've completed this lesson? If so, I'll need to get some more info from you.

1: Yes
2: No
3: Maybe later

Selection: 1

| Is the following information correct?

Course ID: rprog-005
Submission login (email): yelangya3826850@126.com
Submission password: DCAEhgghma

1: Yes, go ahead!
2: No, I need to change something.

Selection: 1

| I'll try to tell Coursera you've completed this lesson now.

| Great work!

| I've notified Coursera that you have completed rprog-005, Matrices_and_Data_Frames.

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

