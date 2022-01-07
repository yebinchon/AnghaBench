
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_softc {int sc_mh; } ;
struct ieee80211com {scalar_t__ ic_promisc; struct mwl_softc* ic_softc; } ;


 int mwl_hal_setpromisc (int ,int) ;

__attribute__((used)) static void
mwl_update_promisc(struct ieee80211com *ic)
{
 struct mwl_softc *sc = ic->ic_softc;

 mwl_hal_setpromisc(sc->sc_mh, ic->ic_promisc > 0);
}
