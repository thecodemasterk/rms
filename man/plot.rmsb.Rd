% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stanMisc.r
\name{plot.rmsb}
\alias{plot.rmsb}
\title{plot.rmsb}
\usage{
\method{plot}{rmsb}(
  x,
  which = NULL,
  nrow = NULL,
  ncol = NULL,
  prob = 0.95,
  bivar = FALSE,
  bivarmethod = c("ellipse", "kernel"),
  ...
)
}
\arguments{
\item{x}{an \code{rms} Bayesian fit object}

\item{which}{names of parameters to plot, defaulting to all non-intercepts. Can instead be a vector of integers.}

\item{nrow}{number of rows of plots}

\item{ncol}{number of columns of plots}

\item{prob}{probability for HPD interval}

\item{bivar}{set to \code{TRUE} to plot bivariate density contours instead of univariate results (ignored if the number of parameters plotted is not exactly two)}

\item{bivarmethod}{passed as \code{method} argument to \code{pdensityContour}}

\item{...}{passed to \code{pdensityContour}}
}
\value{
\code{ggplot2} object
}
\description{
Plot Posterior Densities and Summaries
}
\details{
For an \code{rms} Bayesian fit object, plots posterior densities for selected parameters along with posterior mode, mean, median, and highest posterior density interval.  If the fit was produced by \code{stackMI} the density represents the distribution after stacking the posterior draws over imputations, and the per-imputation density is also drawn as pale curves.  If exactly two parameters are being plotted and \code{bivar=TRUE}, hightest bivariate posterior density contrours are plotted instead, for a variety of \code{prob} values including the one specified, using
}
\author{
Frank Harrell
}
