
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uath_softc {int * sc_tx; int sc_tx_inactive; int sc_tx_pending; int sc_tx_active; int sc_tx_dma_buf; } ;


 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_HEAD (int *,int *,int ) ;
 int UATH_MAX_TXBUFSZ ;
 int UATH_STAT_INC (struct uath_softc*,int ) ;
 int UATH_TX_DATA_LIST_COUNT ;
 int next ;
 int st_tx_inactive ;
 int uath_alloc_data_list (struct uath_softc*,int *,int,int ,int ) ;

__attribute__((used)) static int
uath_alloc_tx_data_list(struct uath_softc *sc)
{
 int error, i;

 error = uath_alloc_data_list(sc,
     sc->sc_tx, UATH_TX_DATA_LIST_COUNT, UATH_MAX_TXBUFSZ,
     sc->sc_tx_dma_buf);
 if (error != 0)
  return (error);

 STAILQ_INIT(&sc->sc_tx_active);
 STAILQ_INIT(&sc->sc_tx_inactive);
 STAILQ_INIT(&sc->sc_tx_pending);

 for (i = 0; i < UATH_TX_DATA_LIST_COUNT; i++) {
  STAILQ_INSERT_HEAD(&sc->sc_tx_inactive, &sc->sc_tx[i],
      next);
  UATH_STAT_INC(sc, st_tx_inactive);
 }

 return (0);
}
