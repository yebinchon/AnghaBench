
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_caps; int ic_htcaps; } ;
struct rtwn_softc {struct r12a_softc* sc_priv; struct ieee80211com sc_ic; } ;
struct r12a_softc {scalar_t__ rs_radar; } ;


 int IEEE80211_C_DFS ;
 int IEEE80211_HTC_TXLDPC ;

__attribute__((used)) static void
r21au_adj_devcaps(struct rtwn_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct r12a_softc *rs = sc->sc_priv;

 ic->ic_htcaps |= IEEE80211_HTC_TXLDPC;
 if (rs->rs_radar != 0)
  ic->ic_caps |= IEEE80211_C_DFS;


}
