
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_softc {int sc_ah; int sc_alq; int sc_rc; TYPE_1__* sc_tx99; int sc_tq; int sc_ic; } ;
struct TYPE_2__ {int (* detach ) (TYPE_1__*) ;} ;


 int ATH_LOCK (struct ath_softc*) ;
 int ATH_UNLOCK (struct ath_softc*) ;
 int HAL_PM_AWAKE ;
 int ath_btcoex_detach (struct ath_softc*) ;
 int ath_desc_free (struct ath_softc*) ;
 int ath_dfs_detach (struct ath_softc*) ;
 int ath_hal_detach (int ) ;
 int ath_lna_div_detach (struct ath_softc*) ;
 int ath_power_set_power_state (struct ath_softc*,int ) ;
 int ath_power_setpower (struct ath_softc*,int ,int) ;
 int ath_rate_detach (int ) ;
 int ath_rxdma_teardown (struct ath_softc*) ;
 int ath_spectral_detach (struct ath_softc*) ;
 int ath_stop (struct ath_softc*) ;
 int ath_tx_cleanup (struct ath_softc*) ;
 int ath_txdma_teardown (struct ath_softc*) ;
 int ieee80211_ifdetach (int *) ;
 int if_ath_alq_tidyup (int *) ;
 int stub1 (TYPE_1__*) ;
 int taskqueue_free (int ) ;

int
ath_detach(struct ath_softc *sc)
{
 ATH_LOCK(sc);
 ath_power_set_power_state(sc, HAL_PM_AWAKE);
 ath_power_setpower(sc, HAL_PM_AWAKE, 1);




 ath_stop(sc);
 ATH_UNLOCK(sc);

 ieee80211_ifdetach(&sc->sc_ic);
 taskqueue_free(sc->sc_tq);




 ath_rate_detach(sc->sc_rc);



 ath_lna_div_detach(sc);
 ath_btcoex_detach(sc);
 ath_spectral_detach(sc);
 ath_dfs_detach(sc);
 ath_desc_free(sc);
 ath_txdma_teardown(sc);
 ath_rxdma_teardown(sc);
 ath_tx_cleanup(sc);
 ath_hal_detach(sc->sc_ah);

 return 0;
}
