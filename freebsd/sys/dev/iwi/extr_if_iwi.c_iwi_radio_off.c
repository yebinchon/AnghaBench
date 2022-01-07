
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct iwi_softc {int sc_dev; struct ieee80211com sc_ic; } ;


 int IWI_LOCK (struct iwi_softc*) ;
 int IWI_LOCK_DECL ;
 int IWI_UNLOCK (struct iwi_softc*) ;
 int device_printf (int ,char*) ;
 int ieee80211_notify_radio (struct ieee80211com*,int ) ;
 int iwi_rfkill_poll (struct iwi_softc*) ;
 int iwi_stop_locked (struct iwi_softc*) ;

__attribute__((used)) static void
iwi_radio_off(void *arg, int pending)
{
 struct iwi_softc *sc = arg;
 struct ieee80211com *ic = &sc->sc_ic;
 IWI_LOCK_DECL;

 device_printf(sc->sc_dev, "radio turned off\n");

 ieee80211_notify_radio(ic, 0);

 IWI_LOCK(sc);
 iwi_stop_locked(sc);
 iwi_rfkill_poll(sc);
 IWI_UNLOCK(sc);
}
