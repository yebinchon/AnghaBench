
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; long tv_usec; } ;



__attribute__((used)) static double
tvsub(const struct timeval *a, const struct timeval *b)
{
 long sdiff;
 long udiff;

 sdiff = a->tv_sec - b->tv_sec;
 udiff = a->tv_usec - b->tv_usec;

 return (double)(sdiff * 1000000 + udiff) / 1e6;
}
