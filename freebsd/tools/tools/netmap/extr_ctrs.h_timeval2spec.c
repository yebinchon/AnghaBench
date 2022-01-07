
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;



__attribute__((used)) static __inline struct timespec
timeval2spec(const struct timeval *a)
{
 struct timespec ts = {
  .tv_sec = a->tv_sec,
  .tv_nsec = a->tv_usec * 1000
 };
 return ts;
}
