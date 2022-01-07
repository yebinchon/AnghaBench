
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct otus_softc {int sc_mtx; int sc_udev; int sc_task; int tx_task; int calib_to; int scan_to; int sc_xfer; struct ieee80211com sc_ic; } ;
typedef int device_t ;


 int OTUS_N_XFER ;
 struct otus_softc* device_get_softc (int ) ;
 int ieee80211_ifdetach (struct ieee80211com*) ;
 int mtx_destroy (int *) ;
 int otus_close_pipes (struct otus_softc*) ;
 int otus_stop (struct otus_softc*) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_drain_timeout (int ,int *) ;
 int taskqueue_thread ;
 int usb_rem_wait_task (int ,int *) ;
 int usbd_ref_wait (int ) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
otus_detach(device_t self)
{
 struct otus_softc *sc = device_get_softc(self);
 struct ieee80211com *ic = &sc->sc_ic;

 otus_stop(sc);

 usbd_transfer_unsetup(sc->sc_xfer, OTUS_N_XFER);

 taskqueue_drain_timeout(taskqueue_thread, &sc->scan_to);
 taskqueue_drain_timeout(taskqueue_thread, &sc->calib_to);
 taskqueue_drain(taskqueue_thread, &sc->tx_task);

 otus_close_pipes(sc);







 ieee80211_ifdetach(ic);
 mtx_destroy(&sc->sc_mtx);
 return 0;
}
