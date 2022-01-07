
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int dummy; } ;


 int ieee80211_crypto_delglobalkeys (struct ieee80211vap*) ;

void
ieee80211_crypto_vdetach(struct ieee80211vap *vap)
{
 ieee80211_crypto_delglobalkeys(vap);
}
