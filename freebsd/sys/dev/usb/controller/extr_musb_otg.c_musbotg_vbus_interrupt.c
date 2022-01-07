
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {int status_vbus; int change_connect; scalar_t__ change_suspend; scalar_t__ status_suspend; scalar_t__ status_bus_reset; } ;
struct musbotg_softc {int sc_bus; TYPE_1__ sc_flags; } ;


 int DPRINTFN (int,char*,scalar_t__) ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int musbotg_root_intr (struct musbotg_softc*) ;

void
musbotg_vbus_interrupt(struct musbotg_softc *sc, uint8_t is_on)
{
 DPRINTFN(4, "vbus = %u\n", is_on);

 USB_BUS_LOCK(&sc->sc_bus);
 if (is_on) {
  if (!sc->sc_flags.status_vbus) {
   sc->sc_flags.status_vbus = 1;


   musbotg_root_intr(sc);
  }
 } else {
  if (sc->sc_flags.status_vbus) {
   sc->sc_flags.status_vbus = 0;
   sc->sc_flags.status_bus_reset = 0;
   sc->sc_flags.status_suspend = 0;
   sc->sc_flags.change_suspend = 0;
   sc->sc_flags.change_connect = 1;


   musbotg_root_intr(sc);
  }
 }

 USB_BUS_UNLOCK(&sc->sc_bus);
}
