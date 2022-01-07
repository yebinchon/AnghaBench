
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;



__attribute__((used)) static void
timespec_subtract(struct timespec *result, struct timespec *x,
    struct timespec *y)
{
 *result = *x;
 result->tv_sec -= y->tv_sec;
 result->tv_nsec -= y->tv_nsec;
 if (result->tv_nsec < 0) {
  result->tv_sec--;
  result->tv_nsec += 1000000000;
 }
}
