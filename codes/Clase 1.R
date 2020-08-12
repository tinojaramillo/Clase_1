"
Elaborado por: Eduard Martinez 
Fecha: 12/08/2020
Nota: Para evitar conflictos entre los diferentes sistema operativos, no se usan
acentos ni caracteres especiales a lo largo de este script
"

#++++++++++++++++++++++++++++++#
# Lenguaje orientado a objetos #
#++++++++++++++++++++++++++++++#
a = 2
b = seq(1,10,1)

#+++++++++++++++++++++#
# Tipos de datos en R #
#+++++++++++++++++++++#
" Tipos de datos:
1. Numeric = 1 , 100 , 1.2 , 00.5 
2. Character = 'Hola'
3. Factor = Etiquetas
4. Logical = FALSE, TRUE, NA
"
?typeof
typeof(x=1.4) # Double
typeof(x=4L) # Integer
typeof(x = "2")  
"
Importante no siempre se debe escribir el nombre del argumento, siempre y cuando se siga 
el estricto orden de los argumentos de la funcion
"
typeof("Hola") # Character
typeof(TRUE) # Logical
class(NA) ; class(1+100) ; class(0.5); class("Texto"); class("1")
str("a") ; str(100) ; str(0.001) ; str(FALSE) 
"
Las funciones 'class' y 'typeof' son utiles para determinar el tipo de dato, mientras que 
la funcion 'str' sera de mayor utilidad para otros objetos
"
# Funciones is.() y as.()
" 
Las funciones is.() me devueleven un elemento logical como 'FALSE' o 'TRUE' 
"
is.numeric("1000") ; is.character(20) ; is.logical(TRUE) ; is.factor(9)
" 
Las funciones as.() se usan para convertir un elemento de un formato a otro 
"
as.numeric("1000") ; as.character(20) ; as.factor(9)
"
Tanto la funcion is.() como as.() tiene una forma general de ecsribirse como:
"
is(object = "1000" ,class2 = "numeric")
is(20, "character")
as(object = "1000",Class = "numeric", strict = TRUE) 
as(20,"character",TRUE) 

"
Sin embargo, se debe tener cuidado con la funcion as.() porque al convertir
datos de character a numeric puede perse informacion
"
as(c("1000 M","7","25","y7"),"numeric",TRUE) 

#+++++++++++++++++++++++++++#
# Estructuras de datos en R #
#+++++++++++++++++++++++++++#
"   ---------------------------------
    |  Homogeneos	 |  Heterogeneos  |
-------------------------------------
1d	|    Vector    |   Listas       |
2d	|    Matriz    |   Dataframe    |
nd	|    Array     |                |
-------------------------------------
"
# Vectores
char_vec <- c("a","b","c","r","d","a","e","c","a","r","r")
char_vec
log_vec <- c(TRUE, FALSE, T, F)
log_vec
dbl_vec <- seq(from = 1 , to = 50, by = 2) # Explicar el help de seq
int_vec <- c(1L, 6L, 10L)
letras <- letters
LETRAS <- LETTERS
meses <- month.abb
meses <- month.name

# ¡Ojo! Los elementos son homogeneos
char_vec2 <- c(1,2,"c")
str(char_vec2)

# Transformaciones a vectores
dbl_log_vec <- as.numeric(log_vec)
str(dbl_log_vec)
char_log_vec <- as.character(log_vec)
str(char_log_vec)

# Atributos de un vector
seq_vec <- seq(1,5000,3)
length(seq_vec)
attributes(seq_vec) 
attr(seq_vec,"my_atribute") <- "Esto es un vector de secuencia"
attributes(seq_vec)

# Eliminar elementos de un vector
seq_vec[2]
seq_vec[1667] 
seq_vec <- seq_vec[-1] # Eliminar el elemento de la posicion 1 del vector
seq_vec
seq_vec <- seq_vec[1:5] # Dejar unicamente los primeros 5 elementos del vector
seq_vec ; char_vec 
char_vec <- char_vec[char_vec != "a"] # Dejar todos los elementos de char_vec diferentes de "a"
char_vec 
!char_vec %in% c("c","r")
char_vec <- char_vec[!char_vec %in% c("c","r")] # Eliminar todos los elementos de char_vec 
char_vec 

# Matrices
a <- matrix(data = 1:15, nrow = 3, ncol = 5) # Matriz de 3*5
View(a) ; a ; # Ver la matriz
length(a) # Largo (numero de elemntos) de la matriz
nrow(a) # Numero de filas
ncol(a) # Numero de columnas
rownames(a) <- c("Eduard", "Danilo","Alonso")
colnames(a) <- c("Nombre", "Peso", "Edad","Estatura","Promedio")
View(a) ; a ; attributes(a) # Ver la matriz

# Matrices de caracteres
c_mat <- matrix(data = c("Hola","Nota","Casa",1), nrow = 2, ncol = 2) # Matriz de 2*3
typeof(c_mat) ; class(c_mat) ; attributes(c_mat) # Atributos de la matriz

# Eliminar elementos de una matriz
c_mat 
c_mat[1,2]
c_mat[,2]
A <- a[,3]
c <- seq(50,1000,50)
length(c)
dim(c) <- c(10, 2) # Modificar las dimensiones de un vector (vector a matriz)
class(c)

# Dataframes
nota_numerica = seq(0,10,2)
nota_alfabetica = c("a","b","b","a","c","b")
dfm <- data.frame(nota_numerica,nota_alfabetica)
str(dfm)

# Eliminar elementos de un dataframe
c_mat 
c_mat[1,2]
c_mat[,2]

# Listas
lista <- list()
lista[[1]] <- dfm
lista[[2]] <- c_mat
lista[[3]] <- c

# Ver elementos de las listas
class(lista[[1]])
names(lista[[1]])
length(lista[[1]])

cat("\f") # Limpiar la consola
rm(list = ls()) # Limpiar memoria

#------------------------#
# Ejercicios extra clase #
#------------------------#
"
Construya una matriz de 2 con la siguientes dimensiones: 10x4.
Construya un vector con todos los numeros pares del 3 a 27.
Construya un vector con los numeros pares del 4 al 20 en orden descendente. 
Construya un vector con todas las letras del alfabeto.
Construya un vector que se repita 12 veces con los número del 1 al 30. 
Construya una lista que contenga una matrix con los numeros del 1 al 4 con dimensiones 2x2 y un vector con las cinco primeras letras del abecedario.
"

