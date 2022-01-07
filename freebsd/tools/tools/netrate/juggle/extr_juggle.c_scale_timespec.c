
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;



__attribute__((used)) static void
scale_timespec(struct timespec *ts, int p)
{

 if (p == 0)
  return;

 ts->tv_sec /= p;
 ts->tv_nsec /= p;
}
