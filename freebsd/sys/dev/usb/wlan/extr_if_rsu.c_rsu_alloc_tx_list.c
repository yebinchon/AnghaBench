
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsu_softc {int * sc_tx; int sc_tx_inactive; int * sc_tx_pending; int * sc_tx_active; } ;


 int RSU_N_TRANSFER ;
 int RSU_TXBUFSZ ;
 int RSU_TX_LIST_COUNT ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_HEAD (int *,int *,int ) ;
 int next ;
 int rsu_alloc_list (struct rsu_softc*,int *,int,int ) ;

__attribute__((used)) static int
rsu_alloc_tx_list(struct rsu_softc *sc)
{
 int error, i;

 error = rsu_alloc_list(sc, sc->sc_tx, RSU_TX_LIST_COUNT,
     RSU_TXBUFSZ);
 if (error != 0)
  return (error);

 STAILQ_INIT(&sc->sc_tx_inactive);

 for (i = 0; i != RSU_N_TRANSFER; i++) {
  STAILQ_INIT(&sc->sc_tx_active[i]);
  STAILQ_INIT(&sc->sc_tx_pending[i]);
 }

 for (i = 0; i < RSU_TX_LIST_COUNT; i++) {
  STAILQ_INSERT_HEAD(&sc->sc_tx_inactive, &sc->sc_tx[i], next);
 }

 return (0);
}
