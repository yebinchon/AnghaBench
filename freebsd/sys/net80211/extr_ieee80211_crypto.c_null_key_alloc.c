
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct ieee80211_key* iv_nw_keys; } ;
struct ieee80211_key {int wk_flags; } ;
typedef scalar_t__ ieee80211_keyix ;


 scalar_t__ IEEE80211_KEYIX_NONE ;
 int IEEE80211_KEY_GROUP ;
 size_t IEEE80211_WEP_NKID ;
 scalar_t__ ieee80211_crypto_get_key_wepidx (struct ieee80211vap*,struct ieee80211_key*) ;

__attribute__((used)) static int
null_key_alloc(struct ieee80211vap *vap, struct ieee80211_key *k,
 ieee80211_keyix *keyix, ieee80211_keyix *rxkeyix)
{
 if (!(&vap->iv_nw_keys[0] <= k &&
      k < &vap->iv_nw_keys[IEEE80211_WEP_NKID])) {
  if (k->wk_flags & IEEE80211_KEY_GROUP)
   return 0;
  *keyix = 0;
 } else {
  *keyix = ieee80211_crypto_get_key_wepidx(vap, k);
 }
 *rxkeyix = IEEE80211_KEYIX_NONE;
 return 1;
}
