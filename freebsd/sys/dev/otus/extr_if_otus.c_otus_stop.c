
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otus_softc {scalar_t__ sc_running; int tx_task; int calib_to; int scan_to; scalar_t__ sc_tx_timer; } ;


 int AR_MAC_REG_DMA_TRIGGER ;
 int OTUS_LOCK (struct otus_softc*) ;
 int OTUS_UNLOCK (struct otus_softc*) ;
 int OTUS_UNLOCK_ASSERT (struct otus_softc*) ;
 int otus_drain_mbufq (struct otus_softc*) ;
 int otus_write (struct otus_softc*,int ,int ) ;
 int otus_write_barrier (struct otus_softc*) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_drain_timeout (int ,int *) ;
 int taskqueue_thread ;

void
otus_stop(struct otus_softc *sc)
{




 OTUS_UNLOCK_ASSERT(sc);

 OTUS_LOCK(sc);
 sc->sc_running = 0;
 sc->sc_tx_timer = 0;
 OTUS_UNLOCK(sc);

 taskqueue_drain_timeout(taskqueue_thread, &sc->scan_to);
 taskqueue_drain_timeout(taskqueue_thread, &sc->calib_to);
 taskqueue_drain(taskqueue_thread, &sc->tx_task);

 OTUS_LOCK(sc);
 sc->sc_running = 0;

 otus_write(sc, AR_MAC_REG_DMA_TRIGGER, 0);
 (void)otus_write_barrier(sc);


 otus_drain_mbufq(sc);

 OTUS_UNLOCK(sc);
}
