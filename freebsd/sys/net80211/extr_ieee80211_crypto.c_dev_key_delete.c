
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int (* iv_key_delete ) (struct ieee80211vap*,struct ieee80211_key const*) ;} ;
struct ieee80211_key {int dummy; } ;


 int stub1 (struct ieee80211vap*,struct ieee80211_key const*) ;

__attribute__((used)) static __inline int
dev_key_delete(struct ieee80211vap *vap,
 const struct ieee80211_key *key)
{
 return vap->iv_key_delete(vap, key);
}
