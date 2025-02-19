
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct ipw_softc {struct ieee80211com sc_ic; } ;
typedef int device_t ;


 struct ipw_softc* device_get_softc (int ) ;
 int ieee80211_suspend_all (struct ieee80211com*) ;

__attribute__((used)) static int
ipw_suspend(device_t dev)
{
 struct ipw_softc *sc = device_get_softc(dev);
 struct ieee80211com *ic = &sc->sc_ic;

 ieee80211_suspend_all(ic);
 return 0;
}
