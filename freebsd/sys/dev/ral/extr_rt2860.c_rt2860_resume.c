
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ic_nrunning; } ;
struct rt2860_softc {TYPE_1__ sc_ic; } ;


 int rt2860_init (struct rt2860_softc*) ;

void
rt2860_resume(void *xsc)
{
 struct rt2860_softc *sc = xsc;

 if (sc->sc_ic.ic_nrunning > 0)
  rt2860_init(sc);
}
