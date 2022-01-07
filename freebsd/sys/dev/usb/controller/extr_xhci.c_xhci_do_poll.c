
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_softc {int sc_bus; } ;
struct usb_bus {int dummy; } ;


 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 struct xhci_softc* XHCI_BUS2SC (struct usb_bus*) ;
 int xhci_interrupt_poll (struct xhci_softc*) ;

__attribute__((used)) static void
xhci_do_poll(struct usb_bus *bus)
{
 struct xhci_softc *sc = XHCI_BUS2SC(bus);

 USB_BUS_LOCK(&sc->sc_bus);
 xhci_interrupt_poll(sc);
 USB_BUS_UNLOCK(&sc->sc_bus);
}
