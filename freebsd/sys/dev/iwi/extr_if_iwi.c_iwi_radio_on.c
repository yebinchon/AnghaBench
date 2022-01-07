
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct iwi_softc {int sc_dev; struct ieee80211com sc_ic; } ;


 int device_printf (int ,char*) ;
 int ieee80211_notify_radio (struct ieee80211com*,int) ;
 int iwi_init (struct iwi_softc*) ;

__attribute__((used)) static void
iwi_radio_on(void *arg, int pending)
{
 struct iwi_softc *sc = arg;
 struct ieee80211com *ic = &sc->sc_ic;

 device_printf(sc->sc_dev, "radio turned on\n");

 iwi_init(sc);
 ieee80211_notify_radio(ic, 1);
}
