
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int * iv_aid_bitmap; int * iv_bss; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_sta; } ;


 int IEEE80211_FREE (int *,int ) ;
 int M_80211_NODE ;
 int ieee80211_free_node (int *) ;
 int ieee80211_node_table_reset (int *,struct ieee80211vap*) ;

void
ieee80211_node_vdetach(struct ieee80211vap *vap)
{
 struct ieee80211com *ic = vap->iv_ic;

 ieee80211_node_table_reset(&ic->ic_sta, vap);
 if (vap->iv_bss != ((void*)0)) {
  ieee80211_free_node(vap->iv_bss);
  vap->iv_bss = ((void*)0);
 }
 if (vap->iv_aid_bitmap != ((void*)0)) {
  IEEE80211_FREE(vap->iv_aid_bitmap, M_80211_NODE);
  vap->iv_aid_bitmap = ((void*)0);
 }
}
