
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct clocktime {int hour; int year; int mon; int day; int min; int sec; int nsec; int dow; } ;
struct bcd_clocktime {int ispm; int year; int mon; int day; int hour; int min; int sec; int nsec; int dow; } ;


 int TOBCD (int) ;
 int clock_ts_to_ct (struct timespec const*,struct clocktime*) ;

void
clock_ts_to_bcd(const struct timespec *ts, struct bcd_clocktime *bct, bool ampm)
{
 struct clocktime ct;

 clock_ts_to_ct(ts, &ct);


 bct->ispm = 0;
 if (ampm) {
  if (ct.hour >= 12) {
   ct.hour -= 12;
   bct->ispm = 1;
  }
  if (ct.hour == 0)
   ct.hour = 12;
 }

 bct->year = TOBCD(ct.year % 100) | (TOBCD(ct.year / 100) << 8);
 bct->mon = TOBCD(ct.mon);
 bct->day = TOBCD(ct.day);
 bct->hour = TOBCD(ct.hour);
 bct->min = TOBCD(ct.min);
 bct->sec = TOBCD(ct.sec);
 bct->dow = ct.dow;
 bct->nsec = ct.nsec;
}
