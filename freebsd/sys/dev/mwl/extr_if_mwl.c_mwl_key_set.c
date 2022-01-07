
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int dummy; } ;
struct ieee80211_key {int wk_macaddr; } ;


 int _mwl_key_set (struct ieee80211vap*,struct ieee80211_key const*,int ) ;

__attribute__((used)) static int
mwl_key_set(struct ieee80211vap *vap, const struct ieee80211_key *k)
{
 return (_mwl_key_set(vap, k, k->wk_macaddr));
}
