
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_softc {int * sc_rx_zone; int * sc_rx_pool; } ;


 int bman_pool_destroy (int *) ;
 int uma_zdestroy (int *) ;

void
dtsec_rm_pool_rx_free(struct dtsec_softc *sc)
{

 if (sc->sc_rx_pool != ((void*)0))
  bman_pool_destroy(sc->sc_rx_pool);

 if (sc->sc_rx_zone != ((void*)0))
  uma_zdestroy(sc->sc_rx_zone);
}
