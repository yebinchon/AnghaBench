
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int iv_max_keyix; void* iv_key_update_end; void* iv_key_update_begin; int iv_key_delete; int iv_key_set; int iv_key_alloc; int * iv_nw_keys; int iv_def_txkey; } ;


 int IEEE80211_KEYIX_NONE ;
 int IEEE80211_WEP_NKID ;
 int ieee80211_crypto_resetkey (struct ieee80211vap*,int *,int ) ;
 int null_key_alloc ;
 int null_key_delete ;
 int null_key_set ;
 void* null_key_update ;

void
ieee80211_crypto_vattach(struct ieee80211vap *vap)
{
 int i;


 vap->iv_max_keyix = IEEE80211_WEP_NKID;
 vap->iv_def_txkey = IEEE80211_KEYIX_NONE;
 for (i = 0; i < IEEE80211_WEP_NKID; i++)
  ieee80211_crypto_resetkey(vap, &vap->iv_nw_keys[i],
   IEEE80211_KEYIX_NONE);




 vap->iv_key_alloc = null_key_alloc;
 vap->iv_key_set = null_key_set;
 vap->iv_key_delete = null_key_delete;
 vap->iv_key_update_begin = null_key_update;
 vap->iv_key_update_end = null_key_update;
}
