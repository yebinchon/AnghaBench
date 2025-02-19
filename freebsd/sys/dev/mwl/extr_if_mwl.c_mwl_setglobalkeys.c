
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int iv_myaddr; struct ieee80211_key* iv_nw_keys; } ;
struct ieee80211_key {scalar_t__ wk_keyix; } ;


 scalar_t__ IEEE80211_KEYIX_NONE ;
 size_t IEEE80211_WEP_NKID ;
 int _mwl_key_set (struct ieee80211vap*,struct ieee80211_key*,int ) ;

__attribute__((used)) static void
mwl_setglobalkeys(struct ieee80211vap *vap)
{
 struct ieee80211_key *wk;

 wk = &vap->iv_nw_keys[0];
 for (; wk < &vap->iv_nw_keys[IEEE80211_WEP_NKID]; wk++)
  if (wk->wk_keyix != IEEE80211_KEYIX_NONE)
   (void) _mwl_key_set(vap, wk, vap->iv_myaddr);
}
