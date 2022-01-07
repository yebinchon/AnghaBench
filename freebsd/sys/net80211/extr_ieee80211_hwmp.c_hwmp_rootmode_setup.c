
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct ieee80211_mesh_state* iv_mesh; struct ieee80211_hwmp_state* iv_hwmp; } ;
struct ieee80211_mesh_state {int ms_flags; } ;
struct ieee80211_hwmp_state {int hs_rootmode; int hs_roottimer; } ;






 int IEEE80211_MESHFLAGS_ROOT ;
 int callout_drain (int *) ;
 int callout_reset (int *,int ,int ,struct ieee80211vap*) ;
 int hwmp_rootmode_cb ;
 int hwmp_rootmode_rann_cb ;
 int ieee80211_hwmp_rannint ;
 int ieee80211_hwmp_rootint ;

__attribute__((used)) static void
hwmp_rootmode_setup(struct ieee80211vap *vap)
{
 struct ieee80211_hwmp_state *hs = vap->iv_hwmp;
 struct ieee80211_mesh_state *ms = vap->iv_mesh;

 switch (hs->hs_rootmode) {
 case 131:
  callout_drain(&hs->hs_roottimer);
  ms->ms_flags &= ~IEEE80211_MESHFLAGS_ROOT;
  break;
 case 130:
 case 129:
  callout_reset(&hs->hs_roottimer, ieee80211_hwmp_rootint,
      hwmp_rootmode_cb, vap);
  ms->ms_flags |= IEEE80211_MESHFLAGS_ROOT;
  break;
 case 128:
  callout_reset(&hs->hs_roottimer, ieee80211_hwmp_rannint,
      hwmp_rootmode_rann_cb, vap);
  ms->ms_flags |= IEEE80211_MESHFLAGS_ROOT;
  break;
 }
}
