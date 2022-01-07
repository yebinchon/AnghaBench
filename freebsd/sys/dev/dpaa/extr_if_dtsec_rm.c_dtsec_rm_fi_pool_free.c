
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_softc {int * sc_fi_zone; } ;


 int uma_zdestroy (int *) ;

void
dtsec_rm_fi_pool_free(struct dtsec_softc *sc)
{

 if (sc->sc_fi_zone != ((void*)0))
  uma_zdestroy(sc->sc_fi_zone);
}
