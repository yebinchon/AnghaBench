
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ic_nrunning; } ;
struct malo_softc {TYPE_1__ malo_ic; } ;


 int malo_init (struct malo_softc*) ;

void
malo_resume(struct malo_softc *sc)
{

 if (sc->malo_ic.ic_nrunning > 0)
  malo_init(sc);
}
