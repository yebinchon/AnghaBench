
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {scalar_t__ iv_state; } ;
struct ieee80211_key {int wk_flags; } ;
struct ieee80211_node {struct ieee80211_key ni_ucastkey; struct ieee80211vap* ni_vap; } ;


 int IEEE80211_KEY_DEVKEY ;
 scalar_t__ IEEE80211_S_RUN ;
 int dev_key_set (struct ieee80211vap*,struct ieee80211_key*) ;

__attribute__((used)) static void
load_ucastkey(void *arg, struct ieee80211_node *ni)
{
 struct ieee80211vap *vap = ni->ni_vap;
 struct ieee80211_key *k;

 if (vap->iv_state != IEEE80211_S_RUN)
  return;
 k = &ni->ni_ucastkey;
 if (k->wk_flags & IEEE80211_KEY_DEVKEY)
  dev_key_set(vap, k);
}
