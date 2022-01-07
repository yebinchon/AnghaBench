
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ic_nrunning; } ;
struct bwi_softc {TYPE_1__ sc_ic; } ;


 int bwi_init (struct bwi_softc*) ;

void
bwi_resume(struct bwi_softc *sc)
{

 if (sc->sc_ic.ic_nrunning > 0)
  bwi_init(sc);
}
