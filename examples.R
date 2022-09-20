library(amar)

set.seed(123)

x<-amar.sim(n = 500, coefficients = c(0.9,-0.7), scales = c(2,6))
res<-amar(x, max.order=20, method = "not", max.scales = 10)
res$scales
res$coefficients

x<-amar.sim(n = 1000, coefficients = c(0.5,0.3), scales = c(1,4))
res<-amar(x, max.order=20, method = "not", max.scales = 10)
res$scales
res$coefficients


# Note: can use other change-point methods for scale detection
# all with information criterion by default
# choose between "wbs","wbs2","not","idetect","tguh".

