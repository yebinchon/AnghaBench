
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlmeop {scalar_t__ op; int reason; struct ieee80211vap* vap; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211_node {scalar_t__ ni_associd; int ni_macaddr; struct ieee80211vap* ni_vap; } ;


 int IEEE80211_FC0_SUBTYPE_DEAUTH ;
 int IEEE80211_FC0_SUBTYPE_DISASSOC ;
 scalar_t__ IEEE80211_MLME_DEAUTH ;
 int IEEE80211_SEND_MGMT (struct ieee80211_node*,int ,int ) ;
 int ieee80211_node_leave (struct ieee80211_node*) ;
 int mlmedebug (struct ieee80211vap*,int ,scalar_t__,int ) ;

__attribute__((used)) static void
domlme(void *arg, struct ieee80211_node *ni)
{
 struct mlmeop *mop = arg;
 struct ieee80211vap *vap = ni->ni_vap;

 if (vap != mop->vap)
  return;





 if (ni->ni_associd == 0)
  return;
 mlmedebug(vap, ni->ni_macaddr, mop->op, mop->reason);
 if (mop->op == IEEE80211_MLME_DEAUTH) {
  IEEE80211_SEND_MGMT(ni, IEEE80211_FC0_SUBTYPE_DEAUTH,
      mop->reason);
 } else {
  IEEE80211_SEND_MGMT(ni, IEEE80211_FC0_SUBTYPE_DISASSOC,
      mop->reason);
 }
 ieee80211_node_leave(ni);
}
