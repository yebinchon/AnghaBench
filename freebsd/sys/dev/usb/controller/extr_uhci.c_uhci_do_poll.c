
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int dummy; } ;
struct uhci_softc {int sc_bus; } ;


 struct uhci_softc* UHCI_BUS2SC (struct usb_bus*) ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int uhci_interrupt_poll (struct uhci_softc*) ;

__attribute__((used)) static void
uhci_do_poll(struct usb_bus *bus)
{
 struct uhci_softc *sc = UHCI_BUS2SC(bus);

 USB_BUS_LOCK(&sc->sc_bus);
 uhci_interrupt_poll(sc);
 USB_BUS_UNLOCK(&sc->sc_bus);
}
