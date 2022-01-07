
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {scalar_t__ ic_promisc; } ;
struct mwl_softc {struct mwl_hal* sc_mh; struct ieee80211com sc_ic; } ;
struct mwl_hal {int dummy; } ;


 int mwl_hal_setpromisc (struct mwl_hal*,int) ;
 int mwl_setmcastfilter (struct mwl_softc*) ;

__attribute__((used)) static int
mwl_mode_init(struct mwl_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct mwl_hal *mh = sc->sc_mh;

 mwl_hal_setpromisc(mh, ic->ic_promisc > 0);
 mwl_setmcastfilter(sc);

 return 0;
}
