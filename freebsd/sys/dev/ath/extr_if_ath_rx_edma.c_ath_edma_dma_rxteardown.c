
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dd_desc_len; } ;
struct ath_softc {int sc_rxbuf; TYPE_1__ sc_rxdma; } ;


 int ATH_RX_LOCK (struct ath_softc*) ;
 int ATH_RX_UNLOCK (struct ath_softc*) ;
 int HAL_RX_QUEUE_HP ;
 int HAL_RX_QUEUE_LP ;
 int ath_descdma_cleanup (struct ath_softc*,TYPE_1__*,int *) ;
 int ath_edma_flush_deferred_queue (struct ath_softc*) ;
 int ath_edma_rxfifo_flush (struct ath_softc*,int ) ;
 int ath_edma_rxfifo_free (struct ath_softc*,int ) ;

__attribute__((used)) static int
ath_edma_dma_rxteardown(struct ath_softc *sc)
{

 ATH_RX_LOCK(sc);
 ath_edma_flush_deferred_queue(sc);
 ath_edma_rxfifo_flush(sc, HAL_RX_QUEUE_HP);
 ath_edma_rxfifo_free(sc, HAL_RX_QUEUE_HP);

 ath_edma_rxfifo_flush(sc, HAL_RX_QUEUE_LP);
 ath_edma_rxfifo_free(sc, HAL_RX_QUEUE_LP);
 ATH_RX_UNLOCK(sc);



 if (sc->sc_rxdma.dd_desc_len != 0)
  ath_descdma_cleanup(sc, &sc->sc_rxdma, &sc->sc_rxbuf);

 return (0);
}
