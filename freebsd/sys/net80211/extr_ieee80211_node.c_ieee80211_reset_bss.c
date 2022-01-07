
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int iv_myaddr; struct ieee80211_node* iv_bss; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_bintval; int ic_sta; } ;
struct ieee80211_node {int ni_bssid; int ni_intval; } ;


 int IEEE80211_ADDR_COPY (int ,int ) ;
 int KASSERT (int ,char*) ;
 int copy_bss (struct ieee80211_node*,struct ieee80211_node*) ;
 struct ieee80211_node* ieee80211_alloc_node (int *,struct ieee80211vap*,int ) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int ieee80211_node_table_reset (int *,struct ieee80211vap*) ;
 struct ieee80211_node* ieee80211_ref_node (struct ieee80211_node*) ;
 int ieee80211_reset_erp (struct ieee80211com*) ;

void
ieee80211_reset_bss(struct ieee80211vap *vap)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct ieee80211_node *ni, *obss;

 ieee80211_node_table_reset(&ic->ic_sta, vap);

 ieee80211_reset_erp(ic);

 ni = ieee80211_alloc_node(&ic->ic_sta, vap, vap->iv_myaddr);
 KASSERT(ni != ((void*)0), ("unable to setup initial BSS node"));
 obss = vap->iv_bss;
 vap->iv_bss = ieee80211_ref_node(ni);
 if (obss != ((void*)0)) {
  copy_bss(ni, obss);
  ni->ni_intval = ic->ic_bintval;
  ieee80211_free_node(obss);
 } else
  IEEE80211_ADDR_COPY(ni->ni_bssid, vap->iv_myaddr);
}
