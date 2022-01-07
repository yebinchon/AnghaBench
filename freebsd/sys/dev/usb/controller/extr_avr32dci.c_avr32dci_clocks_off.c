
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clocks_off; } ;
struct avr32dci_softc {TYPE_1__ sc_flags; int sc_bus; int (* sc_clocks_off ) (int *) ;} ;


 int AVR32_CTRL_DEV_EN_USBA ;
 int DPRINTFN (int,char*) ;
 int avr32dci_mod_ctrl (struct avr32dci_softc*,int ,int ) ;
 int stub1 (int *) ;

__attribute__((used)) static void
avr32dci_clocks_off(struct avr32dci_softc *sc)
{
 if (!sc->sc_flags.clocks_off) {

  DPRINTFN(5, "\n");

  avr32dci_mod_ctrl(sc, 0, AVR32_CTRL_DEV_EN_USBA);


  (sc->sc_clocks_off) (&sc->sc_bus);

  sc->sc_flags.clocks_off = 1;
 }
}
