
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct rtc_instance {int flags; int clockdev; int resadj; } ;


 int CLOCKF_SETTIME_NO_ADJ ;
 int CLOCKF_SETTIME_NO_TS ;
 int CLOCK_SETTIME (int ,struct timespec*) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int) ;
 int getnanotime (struct timespec*) ;
 int timespecadd (struct timespec*,int *,struct timespec*) ;
 scalar_t__ utc_offset () ;

__attribute__((used)) static void
settime_task_func(void *arg, int pending)
{
 struct timespec ts;
 struct rtc_instance *rtc;
 int error;

 rtc = arg;
 if (!(rtc->flags & CLOCKF_SETTIME_NO_TS)) {
  getnanotime(&ts);
  if (!(rtc->flags & CLOCKF_SETTIME_NO_ADJ)) {
   ts.tv_sec -= utc_offset();
   timespecadd(&ts, &rtc->resadj, &ts);
  }
 } else {
  ts.tv_sec = 0;
  ts.tv_nsec = 0;
 }
 error = CLOCK_SETTIME(rtc->clockdev, &ts);
 if (error != 0 && bootverbose)
  device_printf(rtc->clockdev, "CLOCK_SETTIME error %d\n", error);
}
