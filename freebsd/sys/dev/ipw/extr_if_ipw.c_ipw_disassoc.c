
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_softc {int flags; } ;
struct ieee80211vap {struct ieee80211_node* iv_bss; } ;
struct ieee80211com {struct ipw_softc* ic_softc; } ;
struct ieee80211_node {int ni_bssid; } ;


 int DPRINTF (char*) ;
 int IEEE80211_ADDR_LEN ;
 int IPW_CMD_DISASSOCIATE ;
 int IPW_FLAG_ASSOCIATED ;
 int IPW_FLAG_FW_INITED ;
 int IPW_LOCK (struct ipw_softc*) ;
 int IPW_UNLOCK (struct ipw_softc*) ;
 int ipw_cmd (struct ipw_softc*,int ,int ,int ) ;

__attribute__((used)) static void
ipw_disassoc(struct ieee80211com *ic, struct ieee80211vap *vap)
{
 struct ieee80211_node *ni = vap->iv_bss;
 struct ipw_softc *sc = ic->ic_softc;

 IPW_LOCK(sc);
 DPRINTF(("Disassociate from %6D\n", ni->ni_bssid, ":"));




 if (sc->flags & IPW_FLAG_FW_INITED) {
  sc->flags &= ~IPW_FLAG_ASSOCIATED;




  (void) ipw_cmd(sc, IPW_CMD_DISASSOCIATE,
   ni->ni_bssid, IEEE80211_ADDR_LEN);
 }
 IPW_UNLOCK(sc);
}
