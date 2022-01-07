
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ clocks_off; scalar_t__ port_powered; } ;
struct avr32dci_softc {TYPE_1__ sc_flags; int sc_bus; int (* sc_clocks_on ) (int *) ;} ;


 int AVR32_CTRL_DEV_EN_USBA ;
 int DPRINTFN (int,char*) ;
 int avr32dci_mod_ctrl (struct avr32dci_softc*,int ,int ) ;
 int stub1 (int *) ;

__attribute__((used)) static void
avr32dci_clocks_on(struct avr32dci_softc *sc)
{
 if (sc->sc_flags.clocks_off &&
     sc->sc_flags.port_powered) {

  DPRINTFN(5, "\n");


  (sc->sc_clocks_on) (&sc->sc_bus);

  avr32dci_mod_ctrl(sc, AVR32_CTRL_DEV_EN_USBA, 0);

  sc->sc_flags.clocks_off = 0;
 }
}
