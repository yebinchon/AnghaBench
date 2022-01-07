
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211vap {struct ieee80211_key* iv_nw_keys; } ;
struct ieee80211_key {int dummy; } ;


 size_t IEEE80211_WEP_NKID ;

uint8_t
ieee80211_crypto_get_keyid(struct ieee80211vap *vap, struct ieee80211_key *k)
{
 if (k >= &vap->iv_nw_keys[0] &&
     k < &vap->iv_nw_keys[IEEE80211_WEP_NKID])
  return (k - vap->iv_nw_keys);
 else
  return (0);
}
