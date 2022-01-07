
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef int int64_t ;


 int NSEC_PER_SEC ;
 int NSEC_PER_USEC ;

int64_t
timeval_to_ns(const struct timeval *tv)
{
 return ((int64_t)tv->tv_sec * NSEC_PER_SEC) +
  tv->tv_usec * NSEC_PER_USEC;
}
