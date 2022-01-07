
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otus_softc {int sc_tx; int * sc_tx_pending; int * sc_tx_active; int sc_tx_inactive; } ;


 int OTUS_N_XFER ;
 int OTUS_TX_LIST_COUNT ;
 int STAILQ_INIT (int *) ;
 int otus_free_list (struct otus_softc*,int ,int ) ;

__attribute__((used)) static void
otus_free_tx_list(struct otus_softc *sc)
{
 int i;


 STAILQ_INIT(&sc->sc_tx_inactive);

 for (i = 0; i != OTUS_N_XFER; i++) {
  STAILQ_INIT(&sc->sc_tx_active[i]);
  STAILQ_INIT(&sc->sc_tx_pending[i]);
 }

 otus_free_list(sc, sc->sc_tx, OTUS_TX_LIST_COUNT);
}
