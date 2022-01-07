
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ural_softc {int dummy; } ;
struct ieee80211com {int ic_curchan; struct ural_softc* ic_softc; } ;


 int RAL_LOCK (struct ural_softc*) ;
 int RAL_UNLOCK (struct ural_softc*) ;
 int ural_set_chan (struct ural_softc*,int ) ;

__attribute__((used)) static void
ural_set_channel(struct ieee80211com *ic)
{
 struct ural_softc *sc = ic->ic_softc;

 RAL_LOCK(sc);
 ural_set_chan(sc, ic->ic_curchan);
 RAL_UNLOCK(sc);
}
