
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {int status_vbus; int change_connect; scalar_t__ change_suspend; scalar_t__ status_suspend; scalar_t__ status_bus_reset; } ;
struct avr32dci_softc {TYPE_1__ sc_flags; } ;


 int DPRINTFN (int,char*,scalar_t__) ;
 int avr32dci_root_intr (struct avr32dci_softc*) ;

void
avr32dci_vbus_interrupt(struct avr32dci_softc *sc, uint8_t is_on)
{
 DPRINTFN(5, "vbus = %u\n", is_on);

 if (is_on) {
  if (!sc->sc_flags.status_vbus) {
   sc->sc_flags.status_vbus = 1;



   avr32dci_root_intr(sc);
  }
 } else {
  if (sc->sc_flags.status_vbus) {
   sc->sc_flags.status_vbus = 0;
   sc->sc_flags.status_bus_reset = 0;
   sc->sc_flags.status_suspend = 0;
   sc->sc_flags.change_suspend = 0;
   sc->sc_flags.change_connect = 1;



   avr32dci_root_intr(sc);
  }
 }
}
