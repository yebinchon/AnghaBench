
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int dummy; } ;
struct ieee80211_key {int dummy; } ;


 int _ieee80211_crypto_delkey (struct ieee80211vap*,struct ieee80211_key*) ;
 int ieee80211_key_update_begin (struct ieee80211vap*) ;
 int ieee80211_key_update_end (struct ieee80211vap*) ;

int
ieee80211_crypto_delkey(struct ieee80211vap *vap, struct ieee80211_key *key)
{
 int status;

 ieee80211_key_update_begin(vap);
 status = _ieee80211_crypto_delkey(vap, key);
 ieee80211_key_update_end(vap);
 return status;
}
