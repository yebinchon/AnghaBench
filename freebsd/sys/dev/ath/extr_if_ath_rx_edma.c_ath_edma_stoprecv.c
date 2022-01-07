
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_softc {int sc_rx_stopped; TYPE_1__* sc_rxedma; struct ath_hal* sc_ah; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int * m_rxpending; } ;


 scalar_t__ AH_TRUE ;
 int ATH_RX_LOCK (struct ath_softc*) ;
 int ATH_RX_UNLOCK (struct ath_softc*) ;
 int DELAY (int) ;
 size_t HAL_RX_QUEUE_HP ;
 size_t HAL_RX_QUEUE_LP ;
 int ath_hal_setrxfilter (struct ath_hal*,int ) ;
 scalar_t__ ath_hal_stopdmarecv (struct ath_hal*) ;
 int ath_hal_stoppcurecv (struct ath_hal*) ;
 int m_freem (int *) ;

__attribute__((used)) static void
ath_edma_stoprecv(struct ath_softc *sc, int dodelay)
{
 struct ath_hal *ah = sc->sc_ah;

 ATH_RX_LOCK(sc);

 ath_hal_stoppcurecv(ah);
 ath_hal_setrxfilter(ah, 0);




 if (ath_hal_stopdmarecv(ah) == AH_TRUE)
  sc->sc_rx_stopped = 1;





 DELAY(3000);



 if (sc->sc_rxedma[HAL_RX_QUEUE_HP].m_rxpending) {
  m_freem(sc->sc_rxedma[HAL_RX_QUEUE_HP].m_rxpending);
  sc->sc_rxedma[HAL_RX_QUEUE_HP].m_rxpending = ((void*)0);
 }

 if (sc->sc_rxedma[HAL_RX_QUEUE_LP].m_rxpending) {
  m_freem(sc->sc_rxedma[HAL_RX_QUEUE_LP].m_rxpending);
  sc->sc_rxedma[HAL_RX_QUEUE_LP].m_rxpending = ((void*)0);
 }
 ATH_RX_UNLOCK(sc);
}
