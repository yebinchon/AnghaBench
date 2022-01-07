
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_softc {int * sc_txph; int * sc_rxph; } ;


 int FM_PORT_Free (int *) ;

__attribute__((used)) static void
dtsec_fm_port_free_both(struct dtsec_softc *sc)
{
 if (sc->sc_rxph) {
  FM_PORT_Free(sc->sc_rxph);
  sc->sc_rxph = ((void*)0);
 }

 if (sc->sc_txph) {
  FM_PORT_Free(sc->sc_txph);
  sc->sc_txph = ((void*)0);
 }
}
