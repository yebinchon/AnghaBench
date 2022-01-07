
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct efi_tm {int tm_nsec; int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct clocktime {int nsec; int year; int mon; int day; int hour; int min; int sec; } ;
typedef int device_t ;


 int CLOCK_DBG_READ ;
 int clock_ct_to_ts (struct clocktime*,struct timespec*) ;
 int clock_dbgprint_ct (int ,int ,struct clocktime*) ;
 int efi_get_time (struct efi_tm*) ;

__attribute__((used)) static int
efirtc_gettime(device_t dev, struct timespec *ts)
{
 struct clocktime ct;
 struct efi_tm tm;
 int error;

 error = efi_get_time(&tm);
 if (error != 0)
  return (error);

 ct.sec = tm.tm_sec;
 ct.min = tm.tm_min;
 ct.hour = tm.tm_hour;
 ct.day = tm.tm_mday;
 ct.mon = tm.tm_mon;
 ct.year = tm.tm_year;
 ct.nsec = tm.tm_nsec;

 clock_dbgprint_ct(dev, CLOCK_DBG_READ, &ct);
 return (clock_ct_to_ts(&ct, ts));
}
