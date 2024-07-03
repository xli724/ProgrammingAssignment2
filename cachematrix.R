## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL #Initialize the inverse property
        set<- funcntion(y){
                x <<- y #set the martrix value
                inv <<-NULL # Reset the inverse property
        }
         get <- function() x  # Get the matrix value
        setInverse <- function(inverse) inv <<- inverse  # Set the inverse value
        getInverse <- function() inv  # Get the inverse value
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        inv <- x$getInverse()  # Retrieve the cached inverse if it exists
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)  # Return the cached inverse
        }
        data <- x$get()  # Get the matrix value
        inv <- solve(data, ...)  # Compute the inverse
        x$setInverse(inv)  # Cache the inverse
        inv  # Return the inverse
}
