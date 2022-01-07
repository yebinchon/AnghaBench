
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct ieee80211_mesh_state* iv_mesh; } ;
struct ieee80211_mesh_state {int ms_flags; int ms_gatetimer; } ;


 int IEEE80211_MESHFLAGS_GATE ;
 int IEEE80211_MESHFLAGS_ROOT ;
 int callout_drain (int *) ;
 int callout_reset (int *,int ,int ,struct ieee80211vap*) ;
 int ieee80211_mesh_gateint ;
 int mesh_gatemode_cb ;

__attribute__((used)) static void
mesh_gatemode_setup(struct ieee80211vap *vap)
{
 struct ieee80211_mesh_state *ms = vap->iv_mesh;







 if (ms->ms_flags & IEEE80211_MESHFLAGS_ROOT ||
     (ms->ms_flags & IEEE80211_MESHFLAGS_GATE) == 0) {
  callout_drain(&ms->ms_gatetimer);
  return ;
 }
 callout_reset(&ms->ms_gatetimer, ieee80211_mesh_gateint,
     mesh_gatemode_cb, vap);
}
