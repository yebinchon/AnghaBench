
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ d_pulled_up; } ;
struct saf1761_otg_softc {TYPE_1__ sc_flags; } ;


 int DPRINTF (char*) ;

__attribute__((used)) static void
saf1761_otg_pull_down(struct saf1761_otg_softc *sc)
{


 if (sc->sc_flags.d_pulled_up) {
  DPRINTF("\n");

  sc->sc_flags.d_pulled_up = 0;
 }
}
