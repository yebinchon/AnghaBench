
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_softc {int sc_txproc_cnt; int sc_txrix; scalar_t__ sc_softled; scalar_t__ sc_wd_timer; int sc_ah; int sc_lastrx; int * sc_txq; int sc_txq_active; } ;


 int ATH_KTR (struct ath_softc*,int ,int,char*,int ) ;
 int ATH_KTR_TXCOMP ;
 int ATH_LOCK (struct ath_softc*) ;
 int ATH_PCU_LOCK (struct ath_softc*) ;
 int ATH_PCU_UNLOCK (struct ath_softc*) ;
 scalar_t__ ATH_TXQ_SETUP (struct ath_softc*,int) ;
 int ATH_UNLOCK (struct ath_softc*) ;
 int HAL_NUM_TX_QUEUES ;
 int HAL_PM_AWAKE ;
 scalar_t__ TXQACTIVE (int ,int) ;
 int ath_hal_gettsf64 (int ) ;
 int ath_led_event (struct ath_softc*,int ) ;
 int ath_power_restore_power_state (struct ath_softc*) ;
 int ath_power_set_power_state (struct ath_softc*,int ) ;
 int ath_tx_kick (struct ath_softc*) ;
 scalar_t__ ath_tx_processq (struct ath_softc*,int *,int) ;

__attribute__((used)) static void
ath_tx_proc(void *arg, int npending)
{
 struct ath_softc *sc = arg;
 int i, nacked;
 uint32_t txqs;

 ATH_PCU_LOCK(sc);
 sc->sc_txproc_cnt++;
 txqs = sc->sc_txq_active;
 sc->sc_txq_active &= ~txqs;
 ATH_PCU_UNLOCK(sc);

 ATH_LOCK(sc);
 ath_power_set_power_state(sc, HAL_PM_AWAKE);
 ATH_UNLOCK(sc);

 ATH_KTR(sc, ATH_KTR_TXCOMP, 1, "ath_tx_proc: txqs=0x%08x", txqs);




 nacked = 0;
 for (i = 0; i < HAL_NUM_TX_QUEUES; i++)
  if (ATH_TXQ_SETUP(sc, i) && TXQACTIVE(txqs, i))
   nacked += ath_tx_processq(sc, &sc->sc_txq[i], 1);
 if (nacked)
  sc->sc_lastrx = ath_hal_gettsf64(sc->sc_ah);

 sc->sc_wd_timer = 0;

 if (sc->sc_softled)
  ath_led_event(sc, sc->sc_txrix);

 ATH_PCU_LOCK(sc);
 sc->sc_txproc_cnt--;
 ATH_PCU_UNLOCK(sc);

 ATH_LOCK(sc);
 ath_power_restore_power_state(sc);
 ATH_UNLOCK(sc);

 ath_tx_kick(sc);
}
