
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;



__attribute__((used)) static __inline struct timeval
timespec2val(const struct timespec *a)
{
 struct timeval tv = {
  .tv_sec = a->tv_sec,
  .tv_usec = a->tv_nsec / 1000
 };
 return tv;
}
