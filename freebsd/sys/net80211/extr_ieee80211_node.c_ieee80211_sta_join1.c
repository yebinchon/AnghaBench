
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {scalar_t__ iv_state; scalar_t__ iv_opmode; struct ieee80211_node* iv_bss; } ;
struct ieee80211com {int dummy; } ;
struct ieee80211_node_table {int dummy; } ;
struct ieee80211_node {int ni_chan; int ni_rates; struct ieee80211_node_table* ni_table; int ni_macaddr; struct ieee80211com* ni_ic; struct ieee80211vap* ni_vap; } ;


 scalar_t__ IEEE80211_ADDR_EQ (int ,int ) ;
 int IEEE80211_FC0_SUBTYPE_DEAUTH ;
 int IEEE80211_F_DODEL ;
 int IEEE80211_F_JOIN ;
 scalar_t__ IEEE80211_M_STA ;
 int IEEE80211_NODE_LOCK (struct ieee80211_node_table*) ;
 int IEEE80211_NODE_UNLOCK (struct ieee80211_node_table*) ;
 scalar_t__ IEEE80211_S_ASSOC ;
 scalar_t__ IEEE80211_S_AUTH ;
 scalar_t__ IEEE80211_S_RUN ;
 int copy_bss (struct ieee80211_node*,struct ieee80211_node*) ;
 int ieee80211_fix_rate (struct ieee80211_node*,int *,int) ;
 int ieee80211_new_state (struct ieee80211vap*,scalar_t__,int) ;
 int ieee80211_node_decref (struct ieee80211_node*) ;
 int ieee80211_reset_erp (struct ieee80211com*) ;
 int ieee80211_setcurchan (struct ieee80211com*,int ) ;
 int ieee80211_wme_initparams (struct ieee80211vap*) ;
 int node_reclaim (struct ieee80211_node_table*,struct ieee80211_node*) ;

__attribute__((used)) static int
ieee80211_sta_join1(struct ieee80211_node *selbs)
{
 struct ieee80211vap *vap = selbs->ni_vap;
 struct ieee80211com *ic = selbs->ni_ic;
 struct ieee80211_node *obss;
 int canreassoc;




 obss = vap->iv_bss;




 canreassoc = (obss != ((void*)0) &&
  vap->iv_state == IEEE80211_S_RUN &&
  IEEE80211_ADDR_EQ(obss->ni_macaddr, selbs->ni_macaddr));
 vap->iv_bss = selbs;
 if (obss != ((void*)0)) {
  struct ieee80211_node_table *nt = obss->ni_table;

  copy_bss(selbs, obss);
  ieee80211_node_decref(obss);

  IEEE80211_NODE_LOCK(nt);
  node_reclaim(nt, obss);
  IEEE80211_NODE_UNLOCK(nt);

  obss = ((void*)0);
 }





 ieee80211_fix_rate(vap->iv_bss, &vap->iv_bss->ni_rates,
  IEEE80211_F_DODEL | IEEE80211_F_JOIN);

 ieee80211_setcurchan(ic, selbs->ni_chan);





 ieee80211_reset_erp(ic);
 ieee80211_wme_initparams(vap);

 if (vap->iv_opmode == IEEE80211_M_STA) {
  if (canreassoc) {

   ieee80211_new_state(vap, IEEE80211_S_ASSOC, 1);
  } else {






   ieee80211_new_state(vap, IEEE80211_S_AUTH,
    IEEE80211_FC0_SUBTYPE_DEAUTH);
  }
 } else
  ieee80211_new_state(vap, IEEE80211_S_RUN, -1);
 return 1;
}
