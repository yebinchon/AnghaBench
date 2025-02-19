
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct rt2860_softc {struct ieee80211_node** wcid2ni; } ;
struct ieee80211com {struct rt2860_softc* ic_softc; } ;
struct ieee80211_node {scalar_t__ ni_associd; int ni_macaddr; struct ieee80211com* ni_ic; } ;


 int DPRINTF (char*) ;
 int IEEE80211_ADDR_LEN ;
 size_t IEEE80211_AID (scalar_t__) ;
 int RAL_WRITE_REGION_1 (struct rt2860_softc*,int ,int ,int ) ;
 int RT2860_WCID_ENTRY (size_t) ;
 int ether_sprintf (int ) ;

__attribute__((used)) static void
rt2860_newassoc(struct ieee80211_node *ni, int isnew)
{
 struct ieee80211com *ic = ni->ni_ic;
 struct rt2860_softc *sc = ic->ic_softc;
 uint8_t wcid;

 wcid = IEEE80211_AID(ni->ni_associd);
 if (isnew && ni->ni_associd != 0) {
  sc->wcid2ni[wcid] = ni;


  RAL_WRITE_REGION_1(sc, RT2860_WCID_ENTRY(wcid),
      ni->ni_macaddr, IEEE80211_ADDR_LEN);
 }
 DPRINTF(("new assoc isnew=%d addr=%s WCID=%d\n",
     isnew, ether_sprintf(ni->ni_macaddr), wcid));
}
