
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int * iv_nw_keys; } ;


 int IEEE80211_WEP_NKID ;
 int _ieee80211_crypto_delkey (struct ieee80211vap*,int *) ;
 int ieee80211_key_update_begin (struct ieee80211vap*) ;
 int ieee80211_key_update_end (struct ieee80211vap*) ;

void
ieee80211_crypto_delglobalkeys(struct ieee80211vap *vap)
{
 int i;

 ieee80211_key_update_begin(vap);
 for (i = 0; i < IEEE80211_WEP_NKID; i++)
  (void) _ieee80211_crypto_delkey(vap, &vap->iv_nw_keys[i]);
 ieee80211_key_update_end(vap);
}
