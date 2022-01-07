
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc_otg_softc {int sc_timer_active; int sc_timer; } ;


 int DWC_OTG_HOST_TIMER_RATE ;
 int dwc_otg_timer ;
 int hz ;
 int usb_callout_reset (int *,int,int *,struct dwc_otg_softc*) ;

__attribute__((used)) static void
dwc_otg_timer_start(struct dwc_otg_softc *sc)
{
 if (sc->sc_timer_active != 0)
  return;

 sc->sc_timer_active = 1;


 usb_callout_reset(&sc->sc_timer,
     hz / (1000 / DWC_OTG_HOST_TIMER_RATE),
     &dwc_otg_timer, sc);
}
