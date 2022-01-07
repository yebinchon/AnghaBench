
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int dummy; } ;
struct avr32dci_softc {int sc_bus; } ;


 struct avr32dci_softc* AVR32_BUS2SC (struct usb_bus*) ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int avr32dci_interrupt_poll (struct avr32dci_softc*) ;

__attribute__((used)) static void
avr32dci_do_poll(struct usb_bus *bus)
{
 struct avr32dci_softc *sc = AVR32_BUS2SC(bus);

 USB_BUS_LOCK(&sc->sc_bus);
 avr32dci_interrupt_poll(sc);
 USB_BUS_UNLOCK(&sc->sc_bus);
}
