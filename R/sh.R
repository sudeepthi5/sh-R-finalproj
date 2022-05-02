#' create graphs and numerical data
#' @export
#' @param x numerical variable

sh <- function(x)
{
  # 1 row 2 columns
  par(mfrow = c(1,2))

  #Graphical summary
  #Histogram
  hist(x, col = rainbow(20))

  #Numerical summary
  data.frame(mean= mean(x),
             median= median(x),
             sum=sum(x),
             sqrt= sqrt(x),
             trunc= trunc(x),
             kurtosis= kurtosis(x))
}
