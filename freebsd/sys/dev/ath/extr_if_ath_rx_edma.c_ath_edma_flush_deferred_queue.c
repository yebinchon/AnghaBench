
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int * sc_rx_rxlist; } ;
struct ath_buf {int dummy; } ;


 int ATH_RX_LOCK_ASSERT (struct ath_softc*) ;
 size_t HAL_RX_QUEUE_HP ;
 size_t HAL_RX_QUEUE_LP ;
 int TAILQ_EMPTY (int *) ;
 struct ath_buf* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct ath_buf*,int ) ;
 int ath_edma_rxbuf_free (struct ath_softc*,struct ath_buf*) ;
 int bf_list ;

__attribute__((used)) static void
ath_edma_flush_deferred_queue(struct ath_softc *sc)
{
 struct ath_buf *bf;

 ATH_RX_LOCK_ASSERT(sc);


 while (! TAILQ_EMPTY(&sc->sc_rx_rxlist[HAL_RX_QUEUE_LP])) {
  bf = TAILQ_FIRST(&sc->sc_rx_rxlist[HAL_RX_QUEUE_LP]);
  TAILQ_REMOVE(&sc->sc_rx_rxlist[HAL_RX_QUEUE_LP], bf, bf_list);

  ath_edma_rxbuf_free(sc, bf);
 }
 while (! TAILQ_EMPTY(&sc->sc_rx_rxlist[HAL_RX_QUEUE_HP])) {
  bf = TAILQ_FIRST(&sc->sc_rx_rxlist[HAL_RX_QUEUE_HP]);
  TAILQ_REMOVE(&sc->sc_rx_rxlist[HAL_RX_QUEUE_HP], bf, bf_list);

  ath_edma_rxbuf_free(sc, bf);
 }
}
