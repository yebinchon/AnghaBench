
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int sc_rx_statuslen; int sc_rxbuf; int sc_rxdma; } ;


 int ATH_RX_LOCK (struct ath_softc*) ;
 int ATH_RX_UNLOCK (struct ath_softc*) ;
 int HAL_RX_QUEUE_HP ;
 int HAL_RX_QUEUE_LP ;
 int ath_descdma_setup_rx_edma (struct ath_softc*,int *,int *,char*,int ,int ) ;
 int ath_edma_setup_rxfifo (struct ath_softc*,int ) ;
 int ath_rxbuf ;

__attribute__((used)) static int
ath_edma_dma_rxsetup(struct ath_softc *sc)
{
 int error;




 error = ath_descdma_setup_rx_edma(sc, &sc->sc_rxdma, &sc->sc_rxbuf,
     "rx", ath_rxbuf, sc->sc_rx_statuslen);
 if (error != 0)
  return error;

 ATH_RX_LOCK(sc);
 (void) ath_edma_setup_rxfifo(sc, HAL_RX_QUEUE_HP);
 (void) ath_edma_setup_rxfifo(sc, HAL_RX_QUEUE_LP);
 ATH_RX_UNLOCK(sc);

 return (0);
}
