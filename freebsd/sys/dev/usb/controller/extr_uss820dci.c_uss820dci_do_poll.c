
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uss820dci_softc {int sc_bus; } ;
struct usb_bus {int dummy; } ;


 int USB_BUS_LOCK (int *) ;
 int USB_BUS_SPIN_LOCK (int *) ;
 int USB_BUS_SPIN_UNLOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 struct uss820dci_softc* USS820_DCI_BUS2SC (struct usb_bus*) ;
 int uss820dci_interrupt_complete_locked (struct uss820dci_softc*) ;
 int uss820dci_interrupt_poll_locked (struct uss820dci_softc*) ;

__attribute__((used)) static void
uss820dci_do_poll(struct usb_bus *bus)
{
 struct uss820dci_softc *sc = USS820_DCI_BUS2SC(bus);

 USB_BUS_LOCK(&sc->sc_bus);
 USB_BUS_SPIN_LOCK(&sc->sc_bus);
 uss820dci_interrupt_poll_locked(sc);
 uss820dci_interrupt_complete_locked(sc);
 USB_BUS_SPIN_UNLOCK(&sc->sc_bus);
 USB_BUS_UNLOCK(&sc->sc_bus);
}
