
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2661_softc {int dummy; } ;
struct ieee80211com {int ic_curchan; struct rt2661_softc* ic_softc; } ;


 int RAL_LOCK (struct rt2661_softc*) ;
 int RAL_UNLOCK (struct rt2661_softc*) ;
 int rt2661_set_chan (struct rt2661_softc*,int ) ;

__attribute__((used)) static void
rt2661_set_channel(struct ieee80211com *ic)
{
 struct rt2661_softc *sc = ic->ic_softc;

 RAL_LOCK(sc);
 rt2661_set_chan(sc, ic->ic_curchan);
 RAL_UNLOCK(sc);

}
