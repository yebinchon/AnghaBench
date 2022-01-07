
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int sc_rxtask; int sc_tq; } ;
typedef int HAL_RX_QUEUE ;


 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
ath_legacy_recv_sched_queue(struct ath_softc *sc, HAL_RX_QUEUE q,
    int dosched)
{

 taskqueue_enqueue(sc->sc_tq, &sc->sc_rxtask);
}
