
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211vap {struct ieee80211_mesh_state* iv_mesh; TYPE_1__* iv_ic; } ;
struct ieee80211_mesh_state {TYPE_2__* ms_ppath; int ms_cleantimer; } ;
struct TYPE_4__ {int (* mpp_vdetach ) (struct ieee80211vap*) ;} ;
struct TYPE_3__ {int ic_sta; } ;


 int IEEE80211_FREE (struct ieee80211_mesh_state*,int ) ;
 int MESH_RT_LOCK_DESTROY (struct ieee80211_mesh_state*) ;
 int M_80211_VAP ;
 int callout_drain (int *) ;
 int ieee80211_iterate_nodes (int *,int ,int *) ;
 int ieee80211_mesh_rt_flush (struct ieee80211vap*) ;
 int mesh_vdetach_peers ;
 int stub1 (struct ieee80211vap*) ;

__attribute__((used)) static void
mesh_vdetach(struct ieee80211vap *vap)
{
 struct ieee80211_mesh_state *ms = vap->iv_mesh;

 callout_drain(&ms->ms_cleantimer);
 ieee80211_iterate_nodes(&vap->iv_ic->ic_sta, mesh_vdetach_peers,
     ((void*)0));
 ieee80211_mesh_rt_flush(vap);
 MESH_RT_LOCK_DESTROY(ms);
 ms->ms_ppath->mpp_vdetach(vap);
 IEEE80211_FREE(vap->iv_mesh, M_80211_VAP);
 vap->iv_mesh = ((void*)0);
}
