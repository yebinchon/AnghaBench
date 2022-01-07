
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {scalar_t__ iv_opmode; int (* iv_set_tim ) (struct ieee80211_node*,int ) ;int iv_ps_sta; } ;
struct ieee80211com {int ic_stageq; } ;
struct ieee80211_node {int ni_flags; int ** ni_rxfrag; int * ni_challenge; scalar_t__ ni_associd; struct ieee80211com* ni_ic; struct ieee80211vap* ni_vap; } ;


 int IEEE80211_FREE (int *,int ) ;
 int IEEE80211_MSG_POWER ;
 scalar_t__ IEEE80211_M_MBSS ;
 scalar_t__ IEEE80211_M_STA ;
 int IEEE80211_NODE_AREF ;
 int IEEE80211_NODE_ASSOCID ;
 int IEEE80211_NODE_HT ;
 int IEEE80211_NODE_PWR_MGT ;
 int IEEE80211_NODE_VHT ;
 int IEEE80211_NOTE (struct ieee80211vap*,int ,struct ieee80211_node*,char*,int ) ;
 int M_80211_NODE ;
 int ieee80211_ageq_drain_node (int *,struct ieee80211_node*) ;
 int ieee80211_ff_node_cleanup (struct ieee80211_node*) ;
 int ieee80211_ht_node_cleanup (struct ieee80211_node*) ;
 int ieee80211_mesh_node_cleanup (struct ieee80211_node*) ;
 int ieee80211_node_delucastkey (struct ieee80211_node*) ;
 scalar_t__ ieee80211_node_psq_drain (struct ieee80211_node*) ;
 int ieee80211_vht_node_cleanup (struct ieee80211_node*) ;
 int m_freem (int *) ;
 int nitems (int **) ;
 int stub1 (struct ieee80211_node*,int ) ;

__attribute__((used)) static void
node_cleanup(struct ieee80211_node *ni)
{
 struct ieee80211vap *vap = ni->ni_vap;
 struct ieee80211com *ic = ni->ni_ic;
 int i;


 if (ni->ni_flags & IEEE80211_NODE_PWR_MGT) {
  if (vap->iv_opmode != IEEE80211_M_STA)
   vap->iv_ps_sta--;
  ni->ni_flags &= ~IEEE80211_NODE_PWR_MGT;
  IEEE80211_NOTE(vap, IEEE80211_MSG_POWER, ni,
      "power save mode off, %u sta's in ps mode", vap->iv_ps_sta);
 }



 if (ni->ni_flags & IEEE80211_NODE_VHT)
  ieee80211_vht_node_cleanup(ni);
 if (ni->ni_flags & IEEE80211_NODE_HT)
  ieee80211_ht_node_cleanup(ni);
 ieee80211_ageq_drain_node(&ic->ic_stageq, ni);
 ni->ni_flags &= ~(IEEE80211_NODE_AREF | IEEE80211_NODE_ASSOCID);




 if (ieee80211_node_psq_drain(ni) != 0 && vap->iv_set_tim != ((void*)0))
  vap->iv_set_tim(ni, 0);

 ni->ni_associd = 0;
 if (ni->ni_challenge != ((void*)0)) {
  IEEE80211_FREE(ni->ni_challenge, M_80211_NODE);
  ni->ni_challenge = ((void*)0);
 }
 for (i = 0; i < nitems(ni->ni_rxfrag); i++)
  if (ni->ni_rxfrag[i] != ((void*)0)) {
   m_freem(ni->ni_rxfrag[i]);
   ni->ni_rxfrag[i] = ((void*)0);
  }



 ieee80211_node_delucastkey(ni);
}
