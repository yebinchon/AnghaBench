
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {struct rum_softc* ic_softc; } ;
struct rum_softc {int sc_detached; int sc_snd; int cmdq_task; int sc_xfer; struct ieee80211com sc_ic; } ;
typedef int device_t ;


 int RUM_CMDQ_LOCK_DESTROY (struct rum_softc*) ;
 int RUM_LOCK (struct rum_softc*) ;
 int RUM_LOCK_DESTROY (struct rum_softc*) ;
 int RUM_N_TRANSFER ;
 int RUM_UNLOCK (struct rum_softc*) ;
 struct rum_softc* device_get_softc (int ) ;
 int ieee80211_draintask (struct ieee80211com*,int *) ;
 int ieee80211_ifdetach (struct ieee80211com*) ;
 int mbufq_drain (int *) ;
 int rum_unsetup_tx_list (struct rum_softc*) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
rum_detach(device_t self)
{
 struct rum_softc *sc = device_get_softc(self);
 struct ieee80211com *ic = &sc->sc_ic;


 RUM_LOCK(sc);
 sc->sc_detached = 1;
 RUM_UNLOCK(sc);


 usbd_transfer_unsetup(sc->sc_xfer, RUM_N_TRANSFER);


 RUM_LOCK(sc);
 rum_unsetup_tx_list(sc);
 RUM_UNLOCK(sc);

 if (ic->ic_softc == sc) {
  ieee80211_draintask(ic, &sc->cmdq_task);
  ieee80211_ifdetach(ic);
 }

 mbufq_drain(&sc->sc_snd);
 RUM_CMDQ_LOCK_DESTROY(sc);
 RUM_LOCK_DESTROY(sc);

 return (0);
}
