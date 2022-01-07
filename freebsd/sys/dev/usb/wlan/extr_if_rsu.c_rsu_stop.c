
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsu_softc {int * sc_xfer; int keys_bmap; int free_keys_bmap; int tx_task; int calib_task; scalar_t__ sc_calibrating; scalar_t__ sc_vap_is_running; scalar_t__ sc_running; } ;


 int RSU_LOCK (struct rsu_softc*) ;
 int RSU_N_TRANSFER ;
 int RSU_UNLOCK (struct rsu_softc*) ;
 int memset (int ,int ,int) ;
 int rsu_drain_mbufq (struct rsu_softc*) ;
 int rsu_power_off (struct rsu_softc*) ;
 int taskqueue_cancel (int ,int *,int *) ;
 int taskqueue_cancel_timeout (int ,int *,int *) ;
 int taskqueue_thread ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
rsu_stop(struct rsu_softc *sc)
{
 int i;

 RSU_LOCK(sc);
 if (!sc->sc_running) {
  RSU_UNLOCK(sc);
  return;
 }

 sc->sc_running = 0;
 sc->sc_vap_is_running = 0;
 sc->sc_calibrating = 0;
 taskqueue_cancel_timeout(taskqueue_thread, &sc->calib_task, ((void*)0));
 taskqueue_cancel(taskqueue_thread, &sc->tx_task, ((void*)0));


 rsu_power_off(sc);





 memset(sc->free_keys_bmap, 0, sizeof(sc->free_keys_bmap));
 memset(sc->keys_bmap, 0, sizeof(sc->keys_bmap));

 for (i = 0; i < RSU_N_TRANSFER; i++)
  usbd_transfer_stop(sc->sc_xfer[i]);


 rsu_drain_mbufq(sc);
 RSU_UNLOCK(sc);
}
