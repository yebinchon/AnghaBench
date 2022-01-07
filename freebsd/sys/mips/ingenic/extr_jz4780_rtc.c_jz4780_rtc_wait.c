
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_rtc_softc {int dummy; } ;


 int CSR_READ (struct jz4780_rtc_softc*,int ) ;
 int EIO ;
 int JZ_RTCCR ;
 int JZ_RTCCR_WRDY ;
 int JZ_RTC_TIMEOUT ;

__attribute__((used)) static int
jz4780_rtc_wait(struct jz4780_rtc_softc *sc)
{
 int timeout;

 timeout = JZ_RTC_TIMEOUT;
 while (timeout-- > 0) {
  if (CSR_READ(sc, JZ_RTCCR) & JZ_RTCCR_WRDY)
   return (0);
 }
 return (EIO);
}
