
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct abs_timeout {int clockid; int is_abs_real; struct timespec end; int cur; } ;


 int CLOCK_REALTIME ;
 int CLOCK_REALTIME_FAST ;
 int CLOCK_REALTIME_PRECISE ;
 int abs_timeout_update (struct abs_timeout*) ;
 int timespecadd (int *,struct timespec const*,struct timespec*) ;

__attribute__((used)) static void
abs_timeout_init(struct abs_timeout *timo, int clockid, int absolute,
 const struct timespec *timeout)
{

 timo->clockid = clockid;
 if (!absolute) {
  timo->is_abs_real = 0;
  abs_timeout_update(timo);
  timespecadd(&timo->cur, timeout, &timo->end);
 } else {
  timo->end = *timeout;
  timo->is_abs_real = clockid == CLOCK_REALTIME ||
      clockid == CLOCK_REALTIME_FAST ||
      clockid == CLOCK_REALTIME_PRECISE;




  if (!timo->is_abs_real) {
   abs_timeout_update(timo);
  }
 }
}
