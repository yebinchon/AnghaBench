
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct timeval {scalar_t__ tv_sec; int tv_usec; } ;


 int EINVAL ;
 scalar_t__ tick ;

int
itimerfix(struct timeval *tv)
{

 if (tv->tv_sec < 0 || tv->tv_usec < 0 || tv->tv_usec >= 1000000)
  return (EINVAL);
 if (tv->tv_sec == 0 && tv->tv_usec != 0 &&
     tv->tv_usec < (u_int)tick / 16)
  tv->tv_usec = (u_int)tick / 16;
 return (0);
}
