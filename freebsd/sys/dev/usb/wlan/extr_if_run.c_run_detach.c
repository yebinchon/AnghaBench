
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {struct run_softc* ic_softc; } ;
struct run_softc {int sc_detached; int sc_mtx; int ratectl_task; int cmdq_task; int ratectl_ch; struct ieee80211com sc_ic; int * sc_epq; int cmdq_key_set; int cmdq_run; int ratectl_run; int sc_xfer; } ;
typedef int device_t ;


 int RUN_CMDQ_ABORT ;
 int RUN_EP_QUEUES ;
 int RUN_LOCK (struct run_softc*) ;
 int RUN_N_XFER ;
 int RUN_RATECTL_OFF ;
 int RUN_UNLOCK (struct run_softc*) ;
 struct run_softc* device_get_softc (int ) ;
 int ieee80211_draintask (struct ieee80211com*,int *) ;
 int ieee80211_ifdetach (struct ieee80211com*) ;
 int mtx_destroy (int *) ;
 int run_drain_mbufq (struct run_softc*) ;
 int run_unsetup_tx_list (struct run_softc*,int *) ;
 int usb_callout_drain (int *) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
run_detach(device_t self)
{
 struct run_softc *sc = device_get_softc(self);
 struct ieee80211com *ic = &sc->sc_ic;
 int i;

 RUN_LOCK(sc);
 sc->sc_detached = 1;
 RUN_UNLOCK(sc);


 usbd_transfer_unsetup(sc->sc_xfer, RUN_N_XFER);

 RUN_LOCK(sc);
 sc->ratectl_run = RUN_RATECTL_OFF;
 sc->cmdq_run = sc->cmdq_key_set = RUN_CMDQ_ABORT;


 for (i = 0; i != RUN_EP_QUEUES; i++)
  run_unsetup_tx_list(sc, &sc->sc_epq[i]);


 run_drain_mbufq(sc);
 RUN_UNLOCK(sc);

 if (sc->sc_ic.ic_softc == sc) {

  usb_callout_drain(&sc->ratectl_ch);
  ieee80211_draintask(ic, &sc->cmdq_task);
  ieee80211_draintask(ic, &sc->ratectl_task);
  ieee80211_ifdetach(ic);
 }

 mtx_destroy(&sc->sc_mtx);

 return (0);
}
