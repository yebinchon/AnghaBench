
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTCSB_24HR ;
 int RTC_STATUSA ;
 int RTC_STATUSB ;
 int atrtc_lock ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int rtc_statusa ;
 int rtcout_locked (int ,int ) ;

__attribute__((used)) static void
atrtc_start(void)
{

 mtx_lock_spin(&atrtc_lock);
 rtcout_locked(RTC_STATUSA, rtc_statusa);
 rtcout_locked(RTC_STATUSB, RTCSB_24HR);
 mtx_unlock_spin(&atrtc_lock);
}
