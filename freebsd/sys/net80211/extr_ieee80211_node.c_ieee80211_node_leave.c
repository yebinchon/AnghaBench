
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {scalar_t__ iv_opmode; int iv_sta_assoc; TYPE_1__* iv_auth; } ;
struct ieee80211com {int ic_bsschan; int ic_sta_assoc; } ;
struct ieee80211_node_table {int dummy; } ;
struct ieee80211_node {scalar_t__ ni_associd; struct ieee80211_node_table* ni_table; struct ieee80211vap* ni_vap; struct ieee80211com* ni_ic; } ;
struct TYPE_2__ {int (* ia_node_leave ) (struct ieee80211_node*) ;} ;


 int IEEE80211_AID_CLR (struct ieee80211vap*,scalar_t__) ;
 scalar_t__ IEEE80211_IS_CHAN_ANYG (int ) ;
 scalar_t__ IEEE80211_IS_CHAN_FULL (int ) ;
 scalar_t__ IEEE80211_IS_CHAN_HT (int ) ;
 scalar_t__ IEEE80211_IS_CHAN_VHT (int ) ;
 int IEEE80211_LOCK (struct ieee80211com*) ;
 int IEEE80211_MSG_ASSOC ;
 int IEEE80211_MSG_DEBUG ;
 scalar_t__ IEEE80211_M_STA ;
 int IEEE80211_NODE_AID (struct ieee80211_node*) ;
 int IEEE80211_NODE_LOCK (struct ieee80211_node_table*) ;
 int IEEE80211_NODE_UNLOCK (struct ieee80211_node_table*) ;
 int IEEE80211_NOTE (struct ieee80211vap*,int,struct ieee80211_node*,char*,int ) ;
 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 int KASSERT (int,char*) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int ieee80211_ht_node_leave (struct ieee80211_node*) ;
 int ieee80211_node_leave_11g (struct ieee80211_node*) ;
 int ieee80211_sta_leave (struct ieee80211_node*) ;
 int ieee80211_vht_node_leave (struct ieee80211_node*) ;
 int node_reclaim (struct ieee80211_node_table*,struct ieee80211_node*) ;
 int stub1 (struct ieee80211_node*) ;

void
ieee80211_node_leave(struct ieee80211_node *ni)
{
 struct ieee80211com *ic = ni->ni_ic;
 struct ieee80211vap *vap = ni->ni_vap;
 struct ieee80211_node_table *nt = ni->ni_table;

 IEEE80211_NOTE(vap, IEEE80211_MSG_ASSOC | IEEE80211_MSG_DEBUG, ni,
     "station with aid %d leaves", IEEE80211_NODE_AID(ni));

 KASSERT(vap->iv_opmode != IEEE80211_M_STA,
  ("unexpected operating mode %u", vap->iv_opmode));





 if (ni->ni_associd == 0)
  goto done;






 if (vap->iv_auth->ia_node_leave != ((void*)0))
  vap->iv_auth->ia_node_leave(ni);

 IEEE80211_LOCK(ic);
 IEEE80211_AID_CLR(vap, ni->ni_associd);
 vap->iv_sta_assoc--;
 ic->ic_sta_assoc--;

 if (IEEE80211_IS_CHAN_VHT(ic->ic_bsschan))
  ieee80211_vht_node_leave(ni);
 if (IEEE80211_IS_CHAN_HT(ic->ic_bsschan))
  ieee80211_ht_node_leave(ni);
 if (IEEE80211_IS_CHAN_ANYG(ic->ic_bsschan) &&
     IEEE80211_IS_CHAN_FULL(ic->ic_bsschan))
  ieee80211_node_leave_11g(ni);
 IEEE80211_UNLOCK(ic);






 ieee80211_sta_leave(ni);
done:






 if (nt != ((void*)0)) {
  IEEE80211_NODE_LOCK(nt);
  node_reclaim(nt, ni);
  IEEE80211_NODE_UNLOCK(nt);
 } else
  ieee80211_free_node(ni);
}
