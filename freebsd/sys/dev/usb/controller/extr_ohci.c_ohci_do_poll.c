
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int dummy; } ;
struct ohci_softc {int sc_bus; } ;


 struct ohci_softc* OHCI_BUS2SC (struct usb_bus*) ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int ohci_interrupt_poll (struct ohci_softc*) ;

__attribute__((used)) static void
ohci_do_poll(struct usb_bus *bus)
{
 struct ohci_softc *sc = OHCI_BUS2SC(bus);

 USB_BUS_LOCK(&sc->sc_bus);
 ohci_interrupt_poll(sc);
 USB_BUS_UNLOCK(&sc->sc_bus);
}
