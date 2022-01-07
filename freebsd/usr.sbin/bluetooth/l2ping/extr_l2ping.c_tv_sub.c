
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; int tv_sec; } ;



__attribute__((used)) static void
tv_sub(struct timeval *a, struct timeval const *b)
{
 if (a->tv_usec < b->tv_usec) {
  a->tv_usec += 1000000;
  a->tv_sec -= 1;
 }

 a->tv_usec -= b->tv_usec;
 a->tv_sec -= b->tv_sec;
}
