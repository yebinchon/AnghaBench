
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;



__attribute__((used)) static double
tv2msec(struct timeval const *tvp)
{
 return(((double)tvp->tv_usec)/1000.0 + ((double)tvp->tv_sec)*1000.0);
}
