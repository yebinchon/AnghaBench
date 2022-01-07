
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {scalar_t__ iv_opmode; } ;
struct ieee80211_beacon_offsets {int bo_flags; int bo_meshconf; } ;


 int IEEE80211_BEACON_MESHCONF ;
 scalar_t__ IEEE80211_M_MBSS ;
 int KASSERT (int,char*) ;
 int clrbit (int ,int ) ;
 int ieee80211_add_meshconf (int ,struct ieee80211vap*) ;
 scalar_t__ isset (int ,int ) ;

void
ieee80211_mesh_update_beacon(struct ieee80211vap *vap,
 struct ieee80211_beacon_offsets *bo)
{
 KASSERT(vap->iv_opmode == IEEE80211_M_MBSS, ("not a MBSS vap"));

 if (isset(bo->bo_flags, IEEE80211_BEACON_MESHCONF)) {
  (void)ieee80211_add_meshconf(bo->bo_meshconf, vap);
  clrbit(bo->bo_flags, IEEE80211_BEACON_MESHCONF);
 }
}
