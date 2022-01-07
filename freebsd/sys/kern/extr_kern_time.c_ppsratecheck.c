
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct timeval {int tv_sec; } ;


 scalar_t__ hz ;
 int ticks ;

int
ppsratecheck(struct timeval *lasttime, int *curpps, int maxpps)
{
 int now;






 now = ticks;
 if (lasttime->tv_sec == 0 || (u_int)(now - lasttime->tv_sec) >= hz) {
  lasttime->tv_sec = now;
  *curpps = 1;
  return (maxpps != 0);
 } else {
  (*curpps)++;
  return (maxpps < 0 || *curpps <= maxpps);
 }
}
