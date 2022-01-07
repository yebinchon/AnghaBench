
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;



__attribute__((used)) static inline int is_timeval_eq(const struct timeval *i1, const struct timeval *i2)
{
 return i1->tv_sec == i2->tv_sec && i1->tv_usec == i2->tv_usec;
}
