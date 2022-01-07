
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct clocktime {int year; int mon; int day; int hour; int min; int sec; int nsec; int dow; } ;
typedef int intmax_t ;


 int KASSERT (int,char*) ;
 int POSIX_BASE_YEAR ;
 int SECDAY ;
 int clock_print_ct (struct clocktime*,int) ;
 scalar_t__ ct_debug ;
 int day_of_week (int) ;
 int days_in_month (int,int) ;
 int days_in_year (int) ;
 int printf (char*,...) ;
 int recent_base_days ;
 int recent_base_year ;

void
clock_ts_to_ct(const struct timespec *ts, struct clocktime *ct)
{
 time_t i, year, days;
 time_t rsec;
 time_t secs;

 secs = ts->tv_sec;
 days = secs / SECDAY;
 rsec = secs % SECDAY;

 ct->dow = day_of_week(days);


 if (days >= recent_base_days) {
  year = recent_base_year;
  days -= recent_base_days;
 } else {
  year = POSIX_BASE_YEAR;
 }
 for (; days >= days_in_year(year); year++)
  days -= days_in_year(year);
 ct->year = year;


 for (i = 1; days >= days_in_month(year, i); i++)
  days -= days_in_month(year, i);
 ct->mon = i;


 ct->day = days + 1;


 ct->hour = rsec / 3600;
 rsec = rsec % 3600;
 ct->min = rsec / 60;
 rsec = rsec % 60;
 ct->sec = rsec;
 ct->nsec = ts->tv_nsec;
 if (ct_debug) {
  printf("ts_to_ct(%jd.%09ld) = [",
      (intmax_t)ts->tv_sec, ts->tv_nsec);
  clock_print_ct(ct, 9);
  printf("]\n");
 }

 KASSERT(ct->year >= 0 && ct->year < 10000,
     ("year %d isn't a 4 digit year", ct->year));
 KASSERT(ct->mon >= 1 && ct->mon <= 12,
     ("month %d not in 1-12", ct->mon));
 KASSERT(ct->day >= 1 && ct->day <= 31,
     ("day %d not in 1-31", ct->day));
 KASSERT(ct->hour >= 0 && ct->hour <= 23,
     ("hour %d not in 0-23", ct->hour));
 KASSERT(ct->min >= 0 && ct->min <= 59,
     ("minute %d not in 0-59", ct->min));

 KASSERT(ct->sec >= 0 && ct->sec <= 60,
     ("seconds %d not in 0-60", ct->sec));
}
