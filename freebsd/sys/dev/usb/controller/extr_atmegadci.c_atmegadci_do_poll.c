
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int dummy; } ;
struct atmegadci_softc {int sc_bus; } ;


 struct atmegadci_softc* ATMEGA_BUS2SC (struct usb_bus*) ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int atmegadci_interrupt_poll (struct atmegadci_softc*) ;

__attribute__((used)) static void
atmegadci_do_poll(struct usb_bus *bus)
{
 struct atmegadci_softc *sc = ATMEGA_BUS2SC(bus);

 USB_BUS_LOCK(&sc->sc_bus);
 atmegadci_interrupt_poll(sc);
 USB_BUS_UNLOCK(&sc->sc_bus);
}
