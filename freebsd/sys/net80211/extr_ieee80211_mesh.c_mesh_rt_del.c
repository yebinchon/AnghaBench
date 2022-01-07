
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_mesh_state {int ms_routes; } ;
struct ieee80211_mesh_route {int rt_discovery; } ;


 int IEEE80211_FREE (struct ieee80211_mesh_route*,int ) ;
 int MESH_RT_ENTRY_LOCK (struct ieee80211_mesh_route*) ;
 int MESH_RT_ENTRY_LOCK_DESTROY (struct ieee80211_mesh_route*) ;
 int M_80211_MESH_RT ;
 int TAILQ_REMOVE (int *,struct ieee80211_mesh_route*,int ) ;
 int callout_drain (int *) ;
 int rt_next ;

__attribute__((used)) static __inline void
mesh_rt_del(struct ieee80211_mesh_state *ms, struct ieee80211_mesh_route *rt)
{
 TAILQ_REMOVE(&ms->ms_routes, rt, rt_next);




 MESH_RT_ENTRY_LOCK(rt);
 callout_drain(&rt->rt_discovery);
 MESH_RT_ENTRY_LOCK_DESTROY(rt);
 IEEE80211_FREE(rt, M_80211_MESH_RT);
}
