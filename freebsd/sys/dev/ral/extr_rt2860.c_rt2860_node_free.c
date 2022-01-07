
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rt2860_softc {int (* sc_node_free ) (struct ieee80211_node*) ;} ;
struct ieee80211com {struct rt2860_softc* ic_softc; } ;
struct ieee80211_node {scalar_t__ ni_associd; struct ieee80211com* ni_ic; } ;


 int IEEE80211_AID (scalar_t__) ;
 int RAL_SET_REGION_4 (struct rt2860_softc*,int ,int ,int) ;
 int RT2860_WCID_ENTRY (int ) ;
 int stub1 (struct ieee80211_node*) ;

__attribute__((used)) static void
rt2860_node_free(struct ieee80211_node *ni)
{
 struct ieee80211com *ic = ni->ni_ic;
 struct rt2860_softc *sc = ic->ic_softc;
 uint8_t wcid;

 if (ni->ni_associd != 0) {
  wcid = IEEE80211_AID(ni->ni_associd);


  RAL_SET_REGION_4(sc, RT2860_WCID_ENTRY(wcid), 0, 2);
 }
 sc->sc_node_free(ni);
}
