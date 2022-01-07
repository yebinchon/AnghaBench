
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int dummy; } ;
struct dwc_otg_softc {int sc_bus; } ;


 struct dwc_otg_softc* DWC_OTG_BUS2SC (struct usb_bus*) ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_SPIN_LOCK (int *) ;
 int USB_BUS_SPIN_UNLOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int dwc_otg_interrupt_complete_locked (struct dwc_otg_softc*) ;
 int dwc_otg_interrupt_poll_locked (struct dwc_otg_softc*) ;

__attribute__((used)) static void
dwc_otg_do_poll(struct usb_bus *bus)
{
 struct dwc_otg_softc *sc = DWC_OTG_BUS2SC(bus);

 USB_BUS_LOCK(&sc->sc_bus);
 USB_BUS_SPIN_LOCK(&sc->sc_bus);
 dwc_otg_interrupt_poll_locked(sc);
 dwc_otg_interrupt_complete_locked(sc);
 USB_BUS_SPIN_UNLOCK(&sc->sc_bus);
 USB_BUS_UNLOCK(&sc->sc_bus);
}
