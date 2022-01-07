
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int d_pulled_up; scalar_t__ port_powered; } ;
struct musbotg_softc {TYPE_1__ sc_flags; } ;


 int musbotg_pull_common (struct musbotg_softc*,int) ;

__attribute__((used)) static void
musbotg_pull_up(struct musbotg_softc *sc)
{


 if (!sc->sc_flags.d_pulled_up &&
     sc->sc_flags.port_powered) {
  sc->sc_flags.d_pulled_up = 1;
  musbotg_pull_common(sc, 1);
 }
}
