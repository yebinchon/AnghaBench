
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct am79900_softc {int lsc; } ;


 int lance_detach (int *) ;

void
am79900_detach(struct am79900_softc *sc)
{

 lance_detach(&sc->lsc);
}
