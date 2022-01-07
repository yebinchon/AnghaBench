
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;


 int CLOCK_REALTIME_PRECISE ;
 int clock_gettime (int ,struct timespec*) ;
 int poll (int *,int ,int) ;
 struct timespec timespec_sub (struct timespec,struct timespec) ;

__attribute__((used)) static struct timespec
wait_time(struct timespec ts)
{
 for (;;) {
  struct timespec w, cur;
  clock_gettime(CLOCK_REALTIME_PRECISE, &cur);
  w = timespec_sub(ts, cur);
  if (w.tv_sec < 0)
   return cur;
  else if (w.tv_sec > 0 || w.tv_nsec > 1000000)
   poll(((void*)0), 0, 1);
 }
}
