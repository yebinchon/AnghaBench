
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {struct ural_softc* ic_softc; } ;
struct ural_softc {int sc_detached; int sc_mtx; int sc_snd; int sc_xfer; struct ieee80211com sc_ic; } ;
typedef int device_t ;


 int RAL_LOCK (struct ural_softc*) ;
 int RAL_UNLOCK (struct ural_softc*) ;
 int URAL_N_TRANSFER ;
 struct ural_softc* device_get_softc (int ) ;
 int ieee80211_ifdetach (struct ieee80211com*) ;
 int mbufq_drain (int *) ;
 int mtx_destroy (int *) ;
 int ural_unsetup_tx_list (struct ural_softc*) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
ural_detach(device_t self)
{
 struct ural_softc *sc = device_get_softc(self);
 struct ieee80211com *ic = &sc->sc_ic;


 RAL_LOCK(sc);
 sc->sc_detached = 1;
 RAL_UNLOCK(sc);


 usbd_transfer_unsetup(sc->sc_xfer, URAL_N_TRANSFER);


 RAL_LOCK(sc);
 ural_unsetup_tx_list(sc);
 RAL_UNLOCK(sc);

 if (ic->ic_softc == sc)
  ieee80211_ifdetach(ic);
 mbufq_drain(&sc->sc_snd);
 mtx_destroy(&sc->sc_mtx);

 return (0);
}
