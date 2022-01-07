
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {scalar_t__ ic_promisc; } ;
struct malo_softc {struct malo_hal* malo_mh; struct ieee80211com malo_ic; } ;
struct malo_hal {int dummy; } ;


 int ENXIO ;
 int malo_hal_setpromisc (struct malo_hal*,int) ;
 int malo_setmcastfilter (struct malo_softc*) ;

__attribute__((used)) static int
malo_mode_init(struct malo_softc *sc)
{
 struct ieee80211com *ic = &sc->malo_ic;
 struct malo_hal *mh = sc->malo_mh;

 malo_hal_setpromisc(mh, ic->ic_promisc > 0);
 malo_setmcastfilter(sc);

 return ENXIO;
}
