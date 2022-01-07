
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int RTCSA_DIVIDER ;
 int RTC_STATUSA ;
 unsigned int rtc_statusa ;
 int writertc (int ,unsigned int) ;

__attribute__((used)) static void
atrtc_rate(unsigned rate)
{

 rtc_statusa = RTCSA_DIVIDER | rate;
 writertc(RTC_STATUSA, rtc_statusa);
}
