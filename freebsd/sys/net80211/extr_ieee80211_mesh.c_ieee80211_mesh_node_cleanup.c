
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {struct ieee80211_mesh_state* iv_mesh; } ;
struct ieee80211_node {int ni_mlhtimer; int ni_mltimer; struct ieee80211vap* ni_vap; } ;
struct ieee80211_mesh_state {TYPE_1__* ms_ppath; } ;
struct TYPE_2__ {int (* mpp_peerdown ) (struct ieee80211_node*) ;} ;


 int callout_drain (int *) ;
 int stub1 (struct ieee80211_node*) ;

void
ieee80211_mesh_node_cleanup(struct ieee80211_node *ni)
{
 struct ieee80211vap *vap = ni->ni_vap;
 struct ieee80211_mesh_state *ms = vap->iv_mesh;

 callout_drain(&ni->ni_mltimer);
 callout_drain(&ni->ni_mlhtimer);

 if (vap->iv_mesh != ((void*)0))
  ms->ms_ppath->mpp_peerdown(ni);
}
