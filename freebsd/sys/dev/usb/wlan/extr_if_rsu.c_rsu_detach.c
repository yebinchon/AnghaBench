
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct rsu_softc {int sc_mtx; int tx_task; int del_key_task; int calib_task; int sc_xfer; struct ieee80211com sc_ic; } ;
typedef int device_t ;


 int RSU_DELKEY_BMAP_LOCK_DESTROY (struct rsu_softc*) ;
 int RSU_LOCK (struct rsu_softc*) ;
 int RSU_N_TRANSFER ;
 int RSU_UNLOCK (struct rsu_softc*) ;
 struct rsu_softc* device_get_softc (int ) ;
 int ieee80211_ifdetach (struct ieee80211com*) ;
 int mtx_destroy (int *) ;
 int rsu_free_rx_list (struct rsu_softc*) ;
 int rsu_free_tx_list (struct rsu_softc*) ;
 int rsu_stop (struct rsu_softc*) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_drain_timeout (int ,int *) ;
 int taskqueue_thread ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
rsu_detach(device_t self)
{
 struct rsu_softc *sc = device_get_softc(self);
 struct ieee80211com *ic = &sc->sc_ic;

 rsu_stop(sc);

 usbd_transfer_unsetup(sc->sc_xfer, RSU_N_TRANSFER);






 RSU_LOCK(sc);
 rsu_free_tx_list(sc);
 rsu_free_rx_list(sc);
 RSU_UNLOCK(sc);


 ieee80211_ifdetach(ic);

 taskqueue_drain_timeout(taskqueue_thread, &sc->calib_task);
 taskqueue_drain(taskqueue_thread, &sc->del_key_task);
 taskqueue_drain(taskqueue_thread, &sc->tx_task);

 RSU_DELKEY_BMAP_LOCK_DESTROY(sc);
 mtx_destroy(&sc->sc_mtx);

 return (0);
}
