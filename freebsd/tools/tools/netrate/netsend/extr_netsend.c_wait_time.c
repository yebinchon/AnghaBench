
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;


 int CLOCK_REALTIME ;
 int clock_gettime (int ,struct timespec*) ;
 int perror (char*) ;
 int printf (char*) ;
 scalar_t__ timespec_ge (struct timespec*,struct timespec*) ;

__attribute__((used)) static int
wait_time(struct timespec ts, struct timespec *wakeup_ts, long long *waited)
{
 struct timespec curtime;

 curtime.tv_sec = 0;
 curtime.tv_nsec = 0;

 if (clock_gettime(CLOCK_REALTIME, &curtime) == -1) {
  perror("clock_gettime");
  return (-1);
 }




 while (timespec_ge(&ts, &curtime)) {
  if (waited != ((void*)0))
   (*waited)++;
  if (clock_gettime(CLOCK_REALTIME, &curtime) == -1) {
   perror("clock_gettime");
   return (-1);
  }
 }
 if (wakeup_ts != ((void*)0))
  *wakeup_ts = curtime;
 return (0);
}
