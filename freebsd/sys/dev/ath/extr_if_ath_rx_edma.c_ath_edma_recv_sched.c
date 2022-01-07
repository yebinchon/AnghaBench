
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int sc_rxtask; int sc_tq; } ;


 int ATH_LOCK (struct ath_softc*) ;
 int ATH_UNLOCK (struct ath_softc*) ;
 int HAL_PM_AWAKE ;
 int HAL_RX_QUEUE_HP ;
 int HAL_RX_QUEUE_LP ;
 int ath_edma_recv_proc_queue (struct ath_softc*,int ,int) ;
 int ath_power_restore_power_state (struct ath_softc*) ;
 int ath_power_set_power_state (struct ath_softc*,int ) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
ath_edma_recv_sched(struct ath_softc *sc, int dosched)
{

 ATH_LOCK(sc);
 ath_power_set_power_state(sc, HAL_PM_AWAKE);
 ATH_UNLOCK(sc);

 ath_edma_recv_proc_queue(sc, HAL_RX_QUEUE_HP, dosched);
 ath_edma_recv_proc_queue(sc, HAL_RX_QUEUE_LP, dosched);

 ATH_LOCK(sc);
 ath_power_restore_power_state(sc);
 ATH_UNLOCK(sc);

 taskqueue_enqueue(sc->sc_tq, &sc->sc_rxtask);
}
