
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTCSB_PINTR ;
 int RTC_INTR ;
 int RTC_STATUSB ;
 int atrtc_lock ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int rtc_statusb ;
 int rtcin_locked (int ) ;
 int rtcout_locked (int ,int ) ;

__attribute__((used)) static void
atrtc_enable_intr(void)
{

 rtc_statusb |= RTCSB_PINTR;
 mtx_lock_spin(&atrtc_lock);
 rtcout_locked(RTC_STATUSB, rtc_statusb);
 rtcin_locked(RTC_INTR);
 mtx_unlock_spin(&atrtc_lock);
}
