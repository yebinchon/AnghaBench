
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTCSB_24HR ;
 int RTC_INTR ;
 int RTC_STATUSA ;
 int RTC_STATUSB ;
 int atrtc_lock ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int rtc_statusa ;
 int rtc_statusb ;
 int rtcin_locked (int ) ;
 int rtcout_locked (int ,int ) ;

void
atrtc_restore(void)
{


 mtx_lock_spin(&atrtc_lock);
 rtcin_locked(RTC_STATUSA);
 rtcout_locked(RTC_STATUSB, RTCSB_24HR);
 rtcout_locked(RTC_STATUSA, rtc_statusa);
 rtcout_locked(RTC_STATUSB, rtc_statusb);
 rtcin_locked(RTC_INTR);
 mtx_unlock_spin(&atrtc_lock);
}
