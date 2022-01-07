
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwl_hal_vap {int dummy; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_curhtprotmode; } ;
struct TYPE_2__ {struct mwl_hal_vap* mv_hvap; } ;
 int IEEE80211_HTINFO_OPMODE ;
 int KASSERT (int ,char*) ;
 int MS (int ,int ) ;
 TYPE_1__* MWL_VAP (struct ieee80211vap*) ;
 int mwl_beacon_setup (struct ieee80211vap*) ;
 int mwl_hal_setnprotmode (struct mwl_hal_vap*,int ) ;
 int mwl_updateslot (struct ieee80211com*) ;

__attribute__((used)) static void
mwl_beacon_update(struct ieee80211vap *vap, int item)
{
 struct mwl_hal_vap *hvap = MWL_VAP(vap)->mv_hvap;
 struct ieee80211com *ic = vap->iv_ic;

 KASSERT(hvap != ((void*)0), ("no beacon"));
 switch (item) {
 case 131:
  mwl_updateslot(ic);
  break;
 case 130:
  mwl_hal_setnprotmode(hvap,
      MS(ic->ic_curhtprotmode, IEEE80211_HTINFO_OPMODE));
  break;
 case 133:
 case 128:
 case 134:
 case 132:
  break;
 case 129:

  return;
 }

 mwl_beacon_setup(vap);
}
