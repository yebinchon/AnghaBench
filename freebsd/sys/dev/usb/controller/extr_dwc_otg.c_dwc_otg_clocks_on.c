
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ clocks_off; scalar_t__ port_powered; } ;
struct dwc_otg_softc {TYPE_1__ sc_flags; } ;


 int DPRINTFN (int,char*) ;

__attribute__((used)) static void
dwc_otg_clocks_on(struct dwc_otg_softc *sc)
{
 if (sc->sc_flags.clocks_off &&
     sc->sc_flags.port_powered) {

  DPRINTFN(5, "\n");



  sc->sc_flags.clocks_off = 0;
 }
}
