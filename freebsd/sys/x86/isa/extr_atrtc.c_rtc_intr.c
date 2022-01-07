
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int et_arg; int (* et_event_cb ) (TYPE_1__*,int ) ;scalar_t__ et_active; } ;
struct atrtc_softc {TYPE_1__ et; } ;


 int FILTER_HANDLED ;
 int FILTER_STRAY ;
 int RTCIR_PERIOD ;
 int RTC_INTR ;
 int rtcin (int ) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static int
rtc_intr(void *arg)
{
 struct atrtc_softc *sc = (struct atrtc_softc *)arg;
 int flag = 0;

 while (rtcin(RTC_INTR) & RTCIR_PERIOD) {
  flag = 1;
  if (sc->et.et_active)
   sc->et.et_event_cb(&sc->et, sc->et.et_arg);
 }
 return(flag ? FILTER_HANDLED : FILTER_STRAY);
}
