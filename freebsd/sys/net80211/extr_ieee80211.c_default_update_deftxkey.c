
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int iv_def_txkey; } ;
typedef int ieee80211_keyix ;



__attribute__((used)) static void
default_update_deftxkey(struct ieee80211vap *vap, ieee80211_keyix kid)
{



 vap->iv_def_txkey = kid;
}
