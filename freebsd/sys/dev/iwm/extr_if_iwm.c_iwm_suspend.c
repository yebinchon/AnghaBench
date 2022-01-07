
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ic_nrunning; } ;
struct iwm_softc {int sc_flags; TYPE_1__ sc_ic; int sc_attached; } ;
typedef int device_t ;


 int IWM_FLAG_SCANNING ;
 int IWM_LOCK (struct iwm_softc*) ;
 int IWM_UNLOCK (struct iwm_softc*) ;
 struct iwm_softc* device_get_softc (int ) ;
 int ieee80211_suspend_all (TYPE_1__*) ;
 int iwm_stop (struct iwm_softc*) ;

__attribute__((used)) static int
iwm_suspend(device_t dev)
{
 int do_stop = 0;
 struct iwm_softc *sc = device_get_softc(dev);

 do_stop = !! (sc->sc_ic.ic_nrunning > 0);

 if (!sc->sc_attached)
  return (0);

 ieee80211_suspend_all(&sc->sc_ic);

 if (do_stop) {
  IWM_LOCK(sc);
  iwm_stop(sc);
  sc->sc_flags |= IWM_FLAG_SCANNING;
  IWM_UNLOCK(sc);
 }

 return (0);
}
