
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsu_softc {int sc_tx; int * sc_tx_pending; int * sc_tx_active; int sc_tx_inactive; } ;


 int RSU_N_TRANSFER ;
 int RSU_TX_LIST_COUNT ;
 int STAILQ_INIT (int *) ;
 int rsu_free_list (struct rsu_softc*,int ,int ) ;

__attribute__((used)) static void
rsu_free_tx_list(struct rsu_softc *sc)
{
 int i;


 STAILQ_INIT(&sc->sc_tx_inactive);

 for (i = 0; i != RSU_N_TRANSFER; i++) {
  STAILQ_INIT(&sc->sc_tx_active[i]);
  STAILQ_INIT(&sc->sc_tx_pending[i]);
 }

 rsu_free_list(sc, sc->sc_tx, RSU_TX_LIST_COUNT);
}
