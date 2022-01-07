
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211_mesh_route {int rt_flags; scalar_t__ rt_nhops; int rt_lifetime; int rt_updtime; } ;


 int IEEE80211_MESHRT_FLAGS_PROXY ;
 int IEEE80211_MESHRT_FLAGS_VALID ;
 int KASSERT (int ,char*) ;
 int MESH_ROUTE_LIFETIME_MAX (int,int) ;
 int MESH_RT_ENTRY_LOCK (struct ieee80211_mesh_route*) ;
 int MESH_RT_ENTRY_UNLOCK (struct ieee80211_mesh_route*) ;
 int ticks ;
 int ticks_to_msecs (int) ;

int
ieee80211_mesh_rt_update(struct ieee80211_mesh_route *rt, int new_lifetime)
{
 int timesince, now;
 uint32_t lifetime = 0;

 KASSERT(rt != ((void*)0), ("route is NULL"));

 now = ticks;
 MESH_RT_ENTRY_LOCK(rt);


 if (rt->rt_flags & IEEE80211_MESHRT_FLAGS_PROXY && rt->rt_nhops == 0) {
  MESH_RT_ENTRY_UNLOCK(rt);
  return rt->rt_lifetime;
 }

 timesince = ticks_to_msecs(now - rt->rt_updtime);
 rt->rt_updtime = now;
 if (timesince >= rt->rt_lifetime) {
  if (new_lifetime != 0) {
   rt->rt_lifetime = new_lifetime;
  }
  else {
   rt->rt_flags &= ~IEEE80211_MESHRT_FLAGS_VALID;
   rt->rt_lifetime = 0;
  }
 } else {

  rt->rt_lifetime = rt->rt_lifetime - timesince;
  rt->rt_lifetime = MESH_ROUTE_LIFETIME_MAX(
   new_lifetime, rt->rt_lifetime);
 }
 lifetime = rt->rt_lifetime;
 MESH_RT_ENTRY_UNLOCK(rt);

 return lifetime;
}
