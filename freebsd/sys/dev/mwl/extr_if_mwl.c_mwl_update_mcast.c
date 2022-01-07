
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_softc {int dummy; } ;
struct ieee80211com {struct mwl_softc* ic_softc; } ;


 int mwl_setmcastfilter (struct mwl_softc*) ;

__attribute__((used)) static void
mwl_update_mcast(struct ieee80211com *ic)
{
 struct mwl_softc *sc = ic->ic_softc;

 mwl_setmcastfilter(sc);
}
