
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rum_softc {int dummy; } ;
struct ieee80211com {int ic_curchan; struct rum_softc* ic_softc; } ;


 int RUM_LOCK (struct rum_softc*) ;
 int RUM_UNLOCK (struct rum_softc*) ;
 int rum_set_chan (struct rum_softc*,int ) ;

__attribute__((used)) static void
rum_set_channel(struct ieee80211com *ic)
{
 struct rum_softc *sc = ic->ic_softc;

 RUM_LOCK(sc);
 rum_set_chan(sc, ic->ic_curchan);
 RUM_UNLOCK(sc);
}
