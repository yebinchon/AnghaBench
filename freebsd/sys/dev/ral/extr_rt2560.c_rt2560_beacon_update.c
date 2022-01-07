
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_beacon_offsets {int bo_flags; } ;
struct ieee80211vap {struct ieee80211_beacon_offsets iv_bcn_off; } ;


 int setbit (int ,int) ;

__attribute__((used)) static void
rt2560_beacon_update(struct ieee80211vap *vap, int item)
{
 struct ieee80211_beacon_offsets *bo = &vap->iv_bcn_off;

 setbit(bo->bo_flags, item);
}
