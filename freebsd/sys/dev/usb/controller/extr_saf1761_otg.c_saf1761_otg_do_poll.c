
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int dummy; } ;
struct saf1761_otg_softc {int sc_bus; } ;


 struct saf1761_otg_softc* SAF1761_OTG_BUS2SC (struct usb_bus*) ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_SPIN_LOCK (int *) ;
 int USB_BUS_SPIN_UNLOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int saf1761_otg_interrupt_complete_locked (struct saf1761_otg_softc*) ;
 int saf1761_otg_interrupt_poll_locked (struct saf1761_otg_softc*) ;

__attribute__((used)) static void
saf1761_otg_do_poll(struct usb_bus *bus)
{
 struct saf1761_otg_softc *sc = SAF1761_OTG_BUS2SC(bus);

 USB_BUS_LOCK(&sc->sc_bus);
 USB_BUS_SPIN_LOCK(&sc->sc_bus);
 saf1761_otg_interrupt_poll_locked(sc);
 saf1761_otg_interrupt_complete_locked(sc);
 USB_BUS_SPIN_UNLOCK(&sc->sc_bus);
 USB_BUS_UNLOCK(&sc->sc_bus);
}
