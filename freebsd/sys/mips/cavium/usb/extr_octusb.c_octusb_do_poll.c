
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int dummy; } ;
struct octusb_softc {int sc_bus; } ;


 struct octusb_softc* OCTUSB_BUS2SC (struct usb_bus*) ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int octusb_interrupt_poll (struct octusb_softc*) ;

__attribute__((used)) static void
octusb_do_poll(struct usb_bus *bus)
{
 struct octusb_softc *sc = OCTUSB_BUS2SC(bus);

 USB_BUS_LOCK(&sc->sc_bus);
 octusb_interrupt_poll(sc);
 USB_BUS_UNLOCK(&sc->sc_bus);
}
