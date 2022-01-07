
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct timespec {int dummy; } ;
struct itimerspec {struct timespec it_value; struct timespec it_interval; } ;
struct itimer {int it_callout; struct itimerspec it_time; int it_clockid; int it_mtx; } ;


 int EINVAL ;
 int MA_OWNED ;
 int TIMER_ABSTIME ;
 int TIMESPEC_TO_TIMEVAL (struct timeval*,struct timespec*) ;
 int callout_reset (int *,int ,int ,struct itimer*) ;
 int callout_stop (int *) ;
 scalar_t__ itimespecfix (struct timespec*) ;
 int mtx_assert (int *,int ) ;
 int realtimer_clocktime (int ,struct timespec*) ;
 int realtimer_expire ;
 int realtimer_gettime (struct itimer*,struct itimerspec*) ;
 int timespecadd (struct timespec*,struct timespec*,struct timespec*) ;
 int timespecclear (struct timespec*) ;
 scalar_t__ timespecisset (struct timespec*) ;
 int timespecsub (struct timespec*,struct timespec*,struct timespec*) ;
 int tvtohz (struct timeval*) ;

__attribute__((used)) static int
realtimer_settime(struct itimer *it, int flags,
 struct itimerspec *value, struct itimerspec *ovalue)
{
 struct timespec cts, ts;
 struct timeval tv;
 struct itimerspec val;

 mtx_assert(&it->it_mtx, MA_OWNED);

 val = *value;
 if (itimespecfix(&val.it_value))
  return (EINVAL);

 if (timespecisset(&val.it_value)) {
  if (itimespecfix(&val.it_interval))
   return (EINVAL);
 } else {
  timespecclear(&val.it_interval);
 }

 if (ovalue != ((void*)0))
  realtimer_gettime(it, ovalue);

 it->it_time = val;
 if (timespecisset(&val.it_value)) {
  realtimer_clocktime(it->it_clockid, &cts);
  ts = val.it_value;
  if ((flags & TIMER_ABSTIME) == 0) {

   timespecadd(&it->it_time.it_value, &cts,
    &it->it_time.it_value);
  } else {
   timespecsub(&ts, &cts, &ts);




  }
  TIMESPEC_TO_TIMEVAL(&tv, &ts);
  callout_reset(&it->it_callout, tvtohz(&tv),
   realtimer_expire, it);
 } else {
  callout_stop(&it->it_callout);
 }

 return (0);
}
