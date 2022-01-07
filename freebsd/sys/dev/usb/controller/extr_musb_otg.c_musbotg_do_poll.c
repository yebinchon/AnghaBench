
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int dummy; } ;
struct musbotg_softc {int sc_bus; } ;


 struct musbotg_softc* MUSBOTG_BUS2SC (struct usb_bus*) ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int musbotg_interrupt_poll (struct musbotg_softc*) ;

__attribute__((used)) static void
musbotg_do_poll(struct usb_bus *bus)
{
 struct musbotg_softc *sc = MUSBOTG_BUS2SC(bus);

 USB_BUS_LOCK(&sc->sc_bus);
 musbotg_interrupt_poll(sc);
 USB_BUS_UNLOCK(&sc->sc_bus);
}
