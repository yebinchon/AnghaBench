
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_softc {TYPE_1__* sc_rxedma; } ;
struct TYPE_2__ {int * m_rxpending; } ;


 size_t HAL_RX_QUEUE_HP ;
 size_t HAL_RX_QUEUE_LP ;
 int m_freem (int *) ;

__attribute__((used)) static void
ath_legacy_flush_rxpending(struct ath_softc *sc)
{



 if (sc->sc_rxedma[HAL_RX_QUEUE_LP].m_rxpending != ((void*)0)) {
  m_freem(sc->sc_rxedma[HAL_RX_QUEUE_LP].m_rxpending);
  sc->sc_rxedma[HAL_RX_QUEUE_LP].m_rxpending = ((void*)0);
 }
 if (sc->sc_rxedma[HAL_RX_QUEUE_HP].m_rxpending != ((void*)0)) {
  m_freem(sc->sc_rxedma[HAL_RX_QUEUE_HP].m_rxpending);
  sc->sc_rxedma[HAL_RX_QUEUE_HP].m_rxpending = ((void*)0);
 }
}
