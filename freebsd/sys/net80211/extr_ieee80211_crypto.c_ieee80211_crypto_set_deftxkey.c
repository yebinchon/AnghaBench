
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int (* iv_update_deftxkey ) (struct ieee80211vap*,int ) ;} ;
typedef int ieee80211_keyix ;


 int stub1 (struct ieee80211vap*,int ) ;

void
ieee80211_crypto_set_deftxkey(struct ieee80211vap *vap, ieee80211_keyix kid)
{



 vap->iv_update_deftxkey(vap, kid);
}
