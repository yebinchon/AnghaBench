
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otus_softc {int * sc_tx; int sc_tx_inactive; int * sc_tx_pending; int * sc_tx_active; } ;


 int OTUS_N_XFER ;
 int OTUS_TXBUFSZ ;
 int OTUS_TX_LIST_COUNT ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_HEAD (int *,int *,int ) ;
 int next ;
 int otus_alloc_list (struct otus_softc*,int *,int,int ) ;

__attribute__((used)) static int
otus_alloc_tx_list(struct otus_softc *sc)
{
 int error, i;

 error = otus_alloc_list(sc, sc->sc_tx, OTUS_TX_LIST_COUNT,
     OTUS_TXBUFSZ);
 if (error != 0)
  return (error);

 STAILQ_INIT(&sc->sc_tx_inactive);

 for (i = 0; i != OTUS_N_XFER; i++) {
  STAILQ_INIT(&sc->sc_tx_active[i]);
  STAILQ_INIT(&sc->sc_tx_pending[i]);
 }

 for (i = 0; i < OTUS_TX_LIST_COUNT; i++) {
  STAILQ_INSERT_HEAD(&sc->sc_tx_inactive, &sc->sc_tx[i], next);
 }

 return (0);
}
