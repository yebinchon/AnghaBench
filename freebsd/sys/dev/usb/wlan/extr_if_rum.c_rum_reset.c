
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct rum_softc {int dummy; } ;
struct ieee80211vap {int iv_state; int iv_bss; struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct rum_softc* ic_softc; } ;
struct ieee80211_node {int ni_intval; } ;


 int ENETRESET ;




 int IEEE80211_S_SLEEP ;
 int RT2573_AUTO_WAKEUP ;
 int RT2573_MAC_CSR11 ;
 int RUM_LOCK (struct rum_softc*) ;
 int RUM_UNLOCK (struct rum_softc*) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 struct ieee80211_node* ieee80211_ref_node (int ) ;
 int rum_clrbits (struct rum_softc*,int ,int ) ;
 int rum_set_sleep_time (struct rum_softc*,int ) ;
 int rum_setbits (struct rum_softc*,int ,int ) ;

__attribute__((used)) static int
rum_reset(struct ieee80211vap *vap, u_long cmd)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct ieee80211_node *ni;
 struct rum_softc *sc = ic->ic_softc;
 int error;

 switch (cmd) {
 case 131:
 case 129:
 case 128:
  error = 0;
  break;
 case 130:
  ni = ieee80211_ref_node(vap->iv_bss);

  RUM_LOCK(sc);
  error = rum_set_sleep_time(sc, ni->ni_intval);
  if (vap->iv_state == IEEE80211_S_SLEEP) {

   rum_clrbits(sc, RT2573_MAC_CSR11, RT2573_AUTO_WAKEUP);
   rum_setbits(sc, RT2573_MAC_CSR11, RT2573_AUTO_WAKEUP);
  }

  RUM_UNLOCK(sc);

  ieee80211_free_node(ni);
  break;
 default:
  error = ENETRESET;
  break;
 }

 return (error);
}
