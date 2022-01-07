
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int change_connect; } ;
struct musbotg_softc {int sc_bus; TYPE_1__ sc_flags; } ;


 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int musbotg_root_intr (struct musbotg_softc*) ;

void
musbotg_connect_interrupt(struct musbotg_softc *sc)
{
 USB_BUS_LOCK(&sc->sc_bus);
 sc->sc_flags.change_connect = 1;


 musbotg_root_intr(sc);
 USB_BUS_UNLOCK(&sc->sc_bus);
}
