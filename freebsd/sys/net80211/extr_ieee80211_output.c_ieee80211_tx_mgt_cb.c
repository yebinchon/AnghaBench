
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int iv_state; int iv_mgtsend; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; } ;
typedef enum ieee80211_state { ____Placeholder_ieee80211_state } ieee80211_state ;


 int IEEE80211_TRANS_WAIT ;
 int callout_reset (int *,int,int ,struct ieee80211vap*) ;
 int hz ;
 int ieee80211_tx_mgt_timeout ;

__attribute__((used)) static void
ieee80211_tx_mgt_cb(struct ieee80211_node *ni, void *arg, int status)
{
 struct ieee80211vap *vap = ni->ni_vap;
 enum ieee80211_state ostate = (enum ieee80211_state) arg;
 if (vap->iv_state == ostate) {
  callout_reset(&vap->iv_mgtsend,
   status == 0 ? IEEE80211_TRANS_WAIT*hz : 0,
   ieee80211_tx_mgt_timeout, vap);
 }
}
