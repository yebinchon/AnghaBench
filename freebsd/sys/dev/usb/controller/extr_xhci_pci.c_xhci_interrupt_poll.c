
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_softc {int sc_callout; int sc_bus; } ;


 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int usb_callout_reset (int *,int,void*,struct xhci_softc*) ;
 int xhci_interrupt (struct xhci_softc*) ;

__attribute__((used)) static void
xhci_interrupt_poll(void *_sc)
{
 struct xhci_softc *sc = _sc;
 USB_BUS_UNLOCK(&sc->sc_bus);
 xhci_interrupt(sc);
 USB_BUS_LOCK(&sc->sc_bus);
 usb_callout_reset(&sc->sc_callout, 1, (void *)&xhci_interrupt_poll, sc);
}
