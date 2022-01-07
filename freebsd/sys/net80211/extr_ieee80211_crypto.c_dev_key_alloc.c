
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int (* iv_key_alloc ) (struct ieee80211vap*,struct ieee80211_key*,int *,int *) ;} ;
struct ieee80211_key {int dummy; } ;
typedef int ieee80211_keyix ;


 int stub1 (struct ieee80211vap*,struct ieee80211_key*,int *,int *) ;

__attribute__((used)) static __inline int
dev_key_alloc(struct ieee80211vap *vap,
 struct ieee80211_key *key,
 ieee80211_keyix *keyix, ieee80211_keyix *rxkeyix)
{
 return vap->iv_key_alloc(vap, key, keyix, rxkeyix);
}
