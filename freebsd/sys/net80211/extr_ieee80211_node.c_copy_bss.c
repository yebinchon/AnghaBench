
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_node {int ni_vlan; int ni_txpower; int ni_authmode; } ;



__attribute__((used)) static __inline void
copy_bss(struct ieee80211_node *nbss, const struct ieee80211_node *obss)
{

 nbss->ni_authmode = obss->ni_authmode;
 nbss->ni_txpower = obss->ni_txpower;
 nbss->ni_vlan = obss->ni_vlan;


}
