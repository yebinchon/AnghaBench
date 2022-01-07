
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;



__attribute__((used)) static void
tv_add(struct timeval *a, struct timeval const *b)
{
 a->tv_sec += b->tv_sec;
 a->tv_usec += b->tv_usec;

 if(a->tv_usec >= 1000000) {
  a->tv_usec -= 1000000;
  a->tv_sec += 1;
 }
}
