
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urtw_softc {int * sc_tx; int sc_tx_inactive; int sc_tx_pending; int sc_tx_active; int sc_tx_dma_buf; } ;


 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_HEAD (int *,int *,int ) ;
 int URTW_TX_DATA_LIST_COUNT ;
 int URTW_TX_MAXSIZE ;
 int next ;
 int urtw_alloc_data_list (struct urtw_softc*,int *,int,int ,int ) ;

__attribute__((used)) static int
urtw_alloc_tx_data_list(struct urtw_softc *sc)
{
 int error, i;

 error = urtw_alloc_data_list(sc,
     sc->sc_tx, URTW_TX_DATA_LIST_COUNT, URTW_TX_MAXSIZE,
     sc->sc_tx_dma_buf );
 if (error != 0)
  return (error);

 STAILQ_INIT(&sc->sc_tx_active);
 STAILQ_INIT(&sc->sc_tx_inactive);
 STAILQ_INIT(&sc->sc_tx_pending);

 for (i = 0; i < URTW_TX_DATA_LIST_COUNT; i++)
  STAILQ_INSERT_HEAD(&sc->sc_tx_inactive, &sc->sc_tx[i],
      next);

 return (0);
}
