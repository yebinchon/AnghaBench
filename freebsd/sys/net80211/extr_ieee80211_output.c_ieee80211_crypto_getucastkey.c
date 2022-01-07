
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {size_t iv_def_txkey; struct ieee80211_key* iv_nw_keys; } ;
struct ieee80211_key {int dummy; } ;
struct ieee80211_node {struct ieee80211_key ni_ucastkey; } ;


 size_t IEEE80211_KEYIX_NONE ;
 scalar_t__ IEEE80211_KEY_UNDEFINED (struct ieee80211_key*) ;

__attribute__((used)) static __inline struct ieee80211_key *
ieee80211_crypto_getucastkey(struct ieee80211vap *vap,
 struct ieee80211_node *ni)
{
 if (IEEE80211_KEY_UNDEFINED(&ni->ni_ucastkey)) {
  if (vap->iv_def_txkey == IEEE80211_KEYIX_NONE ||
      IEEE80211_KEY_UNDEFINED(&vap->iv_nw_keys[vap->iv_def_txkey]))
   return ((void*)0);
  return &vap->iv_nw_keys[vap->iv_def_txkey];
 } else {
  return &ni->ni_ucastkey;
 }
}
