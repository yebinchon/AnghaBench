
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;



__attribute__((used)) static __inline int
timespec_ge(struct timespec *a, struct timespec *b)
{

 if (a->tv_sec > b->tv_sec)
  return (1);
 if (a->tv_sec < b->tv_sec)
  return (0);
 if (a->tv_nsec >= b->tv_nsec)
  return (1);
 return (0);
}
