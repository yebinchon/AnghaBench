
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventtimer {int dummy; } ;
typedef int sbintime_t ;


 int atrtc_enable_intr () ;
 int atrtc_rate (int ) ;
 scalar_t__ fls (int) ;
 int max (scalar_t__,int) ;

__attribute__((used)) static int
rtc_start(struct eventtimer *et, sbintime_t first, sbintime_t period)
{

 atrtc_rate(max(fls(period + (period >> 1)) - 17, 1));
 atrtc_enable_intr();
 return (0);
}
