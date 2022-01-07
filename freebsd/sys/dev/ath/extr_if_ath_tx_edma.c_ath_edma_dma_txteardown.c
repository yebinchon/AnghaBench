
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int sc_txsdma; } ;


 int HAL_NUM_TX_QUEUES ;
 int ath_descdma_cleanup (struct ath_softc*,int *,int *) ;
 int ath_edma_free_txfifo (struct ath_softc*,int) ;

__attribute__((used)) static int
ath_edma_dma_txteardown(struct ath_softc *sc)
{
 int i;

 for (i = 0; i < HAL_NUM_TX_QUEUES; i++) {
  ath_edma_free_txfifo(sc, i);
 }

 ath_descdma_cleanup(sc, &sc->sc_txsdma, ((void*)0));
 return (0);
}
