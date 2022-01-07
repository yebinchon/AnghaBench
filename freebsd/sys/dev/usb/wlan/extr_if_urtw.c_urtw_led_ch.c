
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct urtw_softc {int sc_led_task; struct ieee80211com sc_ic; } ;


 int ieee80211_runtask (struct ieee80211com*,int *) ;

__attribute__((used)) static void
urtw_led_ch(void *arg)
{
 struct urtw_softc *sc = arg;
 struct ieee80211com *ic = &sc->sc_ic;

 ieee80211_runtask(ic, &sc->sc_led_task);
}
