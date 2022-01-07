
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ d_pulled_up; } ;
struct avr32dci_softc {TYPE_1__ sc_flags; } ;


 int AVR32_CTRL_DEV_DETACH ;
 int avr32dci_mod_ctrl (struct avr32dci_softc*,int ,int ) ;

__attribute__((used)) static void
avr32dci_pull_down(struct avr32dci_softc *sc)
{


 if (sc->sc_flags.d_pulled_up) {
  sc->sc_flags.d_pulled_up = 0;
  avr32dci_mod_ctrl(sc, AVR32_CTRL_DEV_DETACH, 0);
 }
}
