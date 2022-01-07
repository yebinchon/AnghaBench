
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc_otg_softc {scalar_t__ sc_timer_active; int sc_timer; } ;


 int usb_callout_stop (int *) ;

__attribute__((used)) static void
dwc_otg_timer_stop(struct dwc_otg_softc *sc)
{
 if (sc->sc_timer_active == 0)
  return;

 sc->sc_timer_active = 0;


 usb_callout_stop(&sc->sc_timer);
}
