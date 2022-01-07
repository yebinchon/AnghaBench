
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int * sc_txq; } ;


 int ATH_TXBUF_LOCK_DESTROY (struct ath_softc*) ;
 scalar_t__ ATH_TXQ_SETUP (struct ath_softc*,int) ;
 int HAL_NUM_TX_QUEUES ;
 int ath_tx_cleanupq (struct ath_softc*,int *) ;

__attribute__((used)) static void
ath_tx_cleanup(struct ath_softc *sc)
{
 int i;

 ATH_TXBUF_LOCK_DESTROY(sc);
 for (i = 0; i < HAL_NUM_TX_QUEUES; i++)
  if (ATH_TXQ_SETUP(sc, i))
   ath_tx_cleanupq(sc, &sc->sc_txq[i]);
}
