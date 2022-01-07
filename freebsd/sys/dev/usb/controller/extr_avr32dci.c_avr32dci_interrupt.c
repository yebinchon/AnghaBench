
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int status_bus_reset; int status_suspend; int change_suspend; int change_connect; } ;
struct avr32dci_softc {int sc_bus; TYPE_1__ sc_flags; } ;


 int AVR32_CLRINT ;
 int AVR32_INTSTA ;
 int AVR32_INT_DET_SUSPD ;
 int AVR32_INT_ENDRESET ;
 int AVR32_INT_EPT_INT (int ) ;
 int AVR32_INT_WAKE_UP ;
 int AVR32_READ_4 (struct avr32dci_softc*,int ) ;
 int AVR32_WRITE_4 (struct avr32dci_softc*,int ,int) ;
 int DPRINTFN (int,char*,...) ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int avr32dci_interrupt_poll (struct avr32dci_softc*) ;
 int avr32dci_mod_ien (struct avr32dci_softc*,int,int) ;
 int avr32dci_root_intr (struct avr32dci_softc*) ;

void
avr32dci_interrupt(struct avr32dci_softc *sc)
{
 uint32_t status;

 USB_BUS_LOCK(&sc->sc_bus);


 status = AVR32_READ_4(sc, AVR32_INTSTA);


 AVR32_WRITE_4(sc, AVR32_CLRINT, status);

 DPRINTFN(14, "INTSTA=0x%08x\n", status);


 if (status & AVR32_INT_ENDRESET) {

  DPRINTFN(5, "end of reset\n");


  sc->sc_flags.status_bus_reset = 1;
  sc->sc_flags.status_suspend = 0;
  sc->sc_flags.change_suspend = 0;
  sc->sc_flags.change_connect = 1;


  avr32dci_mod_ien(sc, AVR32_INT_DET_SUSPD |
      AVR32_INT_ENDRESET, AVR32_INT_WAKE_UP);


  avr32dci_root_intr(sc);
 }





 if (status & AVR32_INT_WAKE_UP) {

  DPRINTFN(5, "resume interrupt\n");

  if (sc->sc_flags.status_suspend) {

   sc->sc_flags.status_suspend = 0;
   sc->sc_flags.change_suspend = 1;


   avr32dci_mod_ien(sc, AVR32_INT_DET_SUSPD |
       AVR32_INT_ENDRESET, AVR32_INT_WAKE_UP);


   avr32dci_root_intr(sc);
  }
 } else if (status & AVR32_INT_DET_SUSPD) {

  DPRINTFN(5, "suspend interrupt\n");

  if (!sc->sc_flags.status_suspend) {

   sc->sc_flags.status_suspend = 1;
   sc->sc_flags.change_suspend = 1;


   avr32dci_mod_ien(sc, AVR32_INT_WAKE_UP |
       AVR32_INT_ENDRESET, AVR32_INT_DET_SUSPD);


   avr32dci_root_intr(sc);
  }
 }

 if (status & -AVR32_INT_EPT_INT(0)) {

  DPRINTFN(5, "real endpoint interrupt\n");

  avr32dci_interrupt_poll(sc);
 }
 USB_BUS_UNLOCK(&sc->sc_bus);
}
