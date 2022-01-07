
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm ;
struct timespec {int tv_sec; } ;
struct efi_tm {int tm_nsec; int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct clocktime {int nsec; int year; int mon; int day; int hour; int min; int sec; } ;
typedef int device_t ;


 int CLOCK_DBG_WRITE ;
 int bzero (struct efi_tm*,int) ;
 int clock_dbgprint_ct (int ,int ,struct clocktime*) ;
 int clock_ts_to_ct (struct timespec*,struct clocktime*) ;
 int efi_set_time (struct efi_tm*) ;
 int efirtc_resadj ;
 int efirtc_zeroes_subseconds ;
 int timespecadd (struct timespec*,int *,struct timespec*) ;
 scalar_t__ utc_offset () ;

__attribute__((used)) static int
efirtc_settime(device_t dev, struct timespec *ts)
{
 struct clocktime ct;
 struct efi_tm tm;






 ts->tv_sec -= utc_offset();
 if (!efirtc_zeroes_subseconds)
  timespecadd(ts, &efirtc_resadj, ts);

 clock_ts_to_ct(ts, &ct);
 clock_dbgprint_ct(dev, CLOCK_DBG_WRITE, &ct);

 bzero(&tm, sizeof(tm));
 tm.tm_sec = ct.sec;
 tm.tm_min = ct.min;
 tm.tm_hour = ct.hour;
 tm.tm_mday = ct.day;
 tm.tm_mon = ct.mon;
 tm.tm_year = ct.year;
 tm.tm_nsec = ct.nsec;

 return (efi_set_time(&tm));
}
