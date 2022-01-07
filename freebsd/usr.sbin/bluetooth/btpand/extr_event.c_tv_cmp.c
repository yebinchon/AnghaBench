
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;



__attribute__((used)) static int
tv_cmp(struct timeval const *a, struct timeval const *b)
{
  if (a->tv_sec > b->tv_sec)
  return (1);

 if (a->tv_sec < b->tv_sec)
  return (-1);

 if (a->tv_usec > b->tv_usec)
  return (1);

 if (a->tv_usec < b->tv_usec)
  return (-1);

 return (0);
}
