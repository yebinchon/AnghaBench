
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct bcd_clocktime {int sec; int min; int hour; int day; int mon; int year; scalar_t__ nsec; scalar_t__ dow; } ;
typedef int device_t ;


 int CLOCK_DBG_READ ;
 int EINVAL ;
 int RTCSA_TUP ;
 int RTCSD_PWR ;
 int RTC_CENTURY ;
 int RTC_DAY ;
 int RTC_HRS ;
 int RTC_MIN ;
 int RTC_MONTH ;
 int RTC_SEC ;
 int RTC_STATUSA ;
 int RTC_STATUSD ;
 int RTC_YEAR ;
 int atrtc_lock ;
 int atrtc_time_lock ;
 int clock_bcd_to_ts (struct bcd_clocktime*,struct timespec*,int) ;
 int clock_dbgprint_bcd (int ,int ,struct bcd_clocktime*) ;
 int device_printf (int ,char*) ;
 int mtx_lock (int *) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock (int *) ;
 int mtx_unlock_spin (int *) ;
 int rtcin (int ) ;
 int rtcin_locked (int ) ;

__attribute__((used)) static int
atrtc_gettime(device_t dev, struct timespec *ts)
{
 struct bcd_clocktime bct;


 if (!(rtcin(RTC_STATUSD) & RTCSD_PWR)) {
  device_printf(dev, "WARNING: Battery failure indication\n");
  return (EINVAL);
 }
 mtx_lock(&atrtc_time_lock);
 while (rtcin(RTC_STATUSA) & RTCSA_TUP)
  continue;
 mtx_lock_spin(&atrtc_lock);
 bct.sec = rtcin_locked(RTC_SEC);
 bct.min = rtcin_locked(RTC_MIN);
 bct.hour = rtcin_locked(RTC_HRS);
 bct.day = rtcin_locked(RTC_DAY);
 bct.mon = rtcin_locked(RTC_MONTH);
 bct.year = rtcin_locked(RTC_YEAR);



 mtx_unlock_spin(&atrtc_lock);
 mtx_unlock(&atrtc_time_lock);

 bct.dow = 0;
 bct.nsec = 0;
 clock_dbgprint_bcd(dev, CLOCK_DBG_READ, &bct);
 return (clock_bcd_to_ts(&bct, ts, 0));
}
