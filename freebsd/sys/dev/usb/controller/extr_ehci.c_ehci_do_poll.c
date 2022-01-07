
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct usb_bus {int dummy; } ;
struct TYPE_4__ {int sc_bus; } ;
typedef TYPE_1__ ehci_softc_t ;


 TYPE_1__* EHCI_BUS2SC (struct usb_bus*) ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int ehci_interrupt_poll (TYPE_1__*) ;

__attribute__((used)) static void
ehci_do_poll(struct usb_bus *bus)
{
 ehci_softc_t *sc = EHCI_BUS2SC(bus);

 USB_BUS_LOCK(&sc->sc_bus);
 ehci_interrupt_poll(sc);
 USB_BUS_UNLOCK(&sc->sc_bus);
}
