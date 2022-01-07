
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct ieee80211_key const* iv_nw_keys; } ;
struct ieee80211_key {int dummy; } ;


 size_t IEEE80211_WEP_NKID ;

int
ieee80211_crypto_get_key_wepidx(const struct ieee80211vap *vap,
    const struct ieee80211_key *k)
{

 if (k >= &vap->iv_nw_keys[0] &&
     k < &vap->iv_nw_keys[IEEE80211_WEP_NKID])
  return (k - vap->iv_nw_keys);
 return (-1);
}
