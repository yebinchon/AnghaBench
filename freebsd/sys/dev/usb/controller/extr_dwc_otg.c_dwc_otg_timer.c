
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc_otg_softc {int sc_timer; scalar_t__ sc_timer_active; int sc_bus; int sc_tmr_val; } ;


 int DPRINTF (char*) ;
 int DWC_OTG_HOST_TIMER_RATE ;
 int MA_OWNED ;
 int USB_BUS_LOCK_ASSERT (int *,int ) ;
 int USB_BUS_SPIN_LOCK (int *) ;
 int USB_BUS_SPIN_UNLOCK (int *) ;
 int dwc_otg_enable_sof_irq (struct dwc_otg_softc*) ;
 int hz ;
 int usb_callout_reset (int *,int,void (*) (void*),struct dwc_otg_softc*) ;

__attribute__((used)) static void
dwc_otg_timer(void *_sc)
{
 struct dwc_otg_softc *sc = _sc;

 USB_BUS_LOCK_ASSERT(&sc->sc_bus, MA_OWNED);

 DPRINTF("\n");

 USB_BUS_SPIN_LOCK(&sc->sc_bus);


 sc->sc_tmr_val++;


 dwc_otg_enable_sof_irq(sc);

 USB_BUS_SPIN_UNLOCK(&sc->sc_bus);

 if (sc->sc_timer_active) {

  usb_callout_reset(&sc->sc_timer,
      hz / (1000 / DWC_OTG_HOST_TIMER_RATE),
      &dwc_otg_timer, sc);
 }
}
