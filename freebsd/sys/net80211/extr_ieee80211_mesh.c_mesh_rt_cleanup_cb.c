
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {struct ieee80211_mesh_state* iv_mesh; } ;
struct ieee80211_mesh_state {TYPE_1__* ms_ppath; int ms_cleantimer; } ;
struct TYPE_2__ {int mpp_inact; } ;


 int callout_reset (int *,int ,void (*) (void*),struct ieee80211vap*) ;
 int mesh_rt_flush_invalid (struct ieee80211vap*) ;

__attribute__((used)) static void
mesh_rt_cleanup_cb(void *arg)
{
 struct ieee80211vap *vap = arg;
 struct ieee80211_mesh_state *ms = vap->iv_mesh;

 mesh_rt_flush_invalid(vap);
 callout_reset(&ms->ms_cleantimer, ms->ms_ppath->mpp_inact,
     mesh_rt_cleanup_cb, vap);
}
