
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct timespec {int dummy; } ;
struct bcd_clocktime {int sec; int min; int hour; int day; int dow; int mon; int year; } ;
typedef int device_t ;


 int CLOCK_DBG_WRITE ;
 int S390_REALTIME1 ;
 size_t S390_RT1_DAY ;
 size_t S390_RT1_HOUR ;
 size_t S390_RT1_MINUTE ;
 size_t S390_RT1_MONTH ;
 int S390_RT1_NBYTES ;
 size_t S390_RT1_SECOND ;
 size_t S390_RT1_WDAY ;
 size_t S390_RT1_YEAR ;
 int clock_dbgprint_bcd (int ,int ,struct bcd_clocktime*) ;
 int clock_ts_to_bcd (struct timespec*,struct bcd_clocktime*,int) ;
 int s390rtc_write (int ,int ,int*,int) ;

__attribute__((used)) static int
s390rtc_settime(device_t dev, struct timespec *ts)
{
 uint8_t bcd[S390_RT1_NBYTES];
 struct bcd_clocktime bct;

 clock_ts_to_bcd(ts, &bct, 0);
 clock_dbgprint_bcd(dev, CLOCK_DBG_WRITE, &bct);





 bcd[S390_RT1_SECOND] = bct.sec;
 bcd[S390_RT1_MINUTE] = bct.min;
 bcd[S390_RT1_HOUR] = bct.hour;
 bcd[S390_RT1_DAY] = bct.day;
 bcd[S390_RT1_WDAY] = bct.dow;
 bcd[S390_RT1_MONTH] = bct.mon;
 bcd[S390_RT1_YEAR] = bct.year & 0xff;

 return (s390rtc_write(dev, S390_REALTIME1, bcd, S390_RT1_NBYTES));
}
