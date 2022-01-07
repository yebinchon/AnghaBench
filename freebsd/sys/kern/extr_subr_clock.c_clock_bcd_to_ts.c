
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct clocktime {int year; int mon; int day; int hour; int min; int sec; int nsec; int dow; } ;
struct bcd_clocktime {int year; int mon; int day; int hour; int min; int sec; scalar_t__ ispm; int nsec; int dow; } ;


 int EINVAL ;
 int FROMBCD (int) ;
 int clock_ct_to_ts (struct clocktime*,struct timespec*) ;
 scalar_t__ ct_debug ;
 int printf (char*,int,int,int,int,int,int) ;
 int validbcd (int) ;

int
clock_bcd_to_ts(const struct bcd_clocktime *bct, struct timespec *ts, bool ampm)
{
 struct clocktime ct;
 int bcent, byear;





 bcent = bct->year >> 8;
 byear = bct->year & 0xff;






 if (!validbcd(bcent) || !validbcd(byear) || !validbcd(bct->mon) ||
     !validbcd(bct->day) || !validbcd(bct->hour) ||
     !validbcd(bct->min) || !validbcd(bct->sec)) {
  if (ct_debug)
   printf("clock_bcd_to_ts: bad BCD: "
       "[%04x-%02x-%02x %02x:%02x:%02x]\n",
       bct->year, bct->mon, bct->day,
       bct->hour, bct->min, bct->sec);
  return (EINVAL);
 }

 ct.year = FROMBCD(byear) + FROMBCD(bcent) * 100;
 ct.mon = FROMBCD(bct->mon);
 ct.day = FROMBCD(bct->day);
 ct.hour = FROMBCD(bct->hour);
 ct.min = FROMBCD(bct->min);
 ct.sec = FROMBCD(bct->sec);
 ct.dow = bct->dow;
 ct.nsec = bct->nsec;


 if (ampm) {
  if (ct.hour == 12)
   ct.hour = 0;
  if (bct->ispm)
   ct.hour += 12;
 }

 return (clock_ct_to_ts(&ct, ts));
}
