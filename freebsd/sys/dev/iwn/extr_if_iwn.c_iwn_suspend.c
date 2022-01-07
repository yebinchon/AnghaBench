
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {int sc_ic; } ;
typedef int device_t ;


 struct iwn_softc* device_get_softc (int ) ;
 int ieee80211_suspend_all (int *) ;

__attribute__((used)) static int
iwn_suspend(device_t dev)
{
 struct iwn_softc *sc = device_get_softc(dev);

 ieee80211_suspend_all(&sc->sc_ic);
 return 0;
}
