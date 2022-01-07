
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;
struct ieee80211com {struct ieee80211_channel* ic_curchan; struct rtwn_softc* ic_softc; } ;
struct ieee80211_channel {int dummy; } ;


 int RTWN_LOCK (struct rtwn_softc*) ;
 int RTWN_UNLOCK (struct rtwn_softc*) ;
 int rtwn_set_chan (struct rtwn_softc*,struct ieee80211_channel*) ;

__attribute__((used)) static void
rtwn_set_channel(struct ieee80211com *ic)
{
 struct rtwn_softc *sc = ic->ic_softc;
 struct ieee80211_channel *c = ic->ic_curchan;

 RTWN_LOCK(sc);
 rtwn_set_chan(sc, c);
 RTWN_UNLOCK(sc);
}
