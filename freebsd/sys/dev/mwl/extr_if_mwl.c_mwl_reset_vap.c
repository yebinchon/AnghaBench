
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mwl_hal_vap {int dummy; } ;
struct ieee80211vap {int iv_flags_ht; scalar_t__ iv_opmode; TYPE_1__* iv_bss; int iv_rtsthreshold; struct ieee80211com* iv_ic; } ;
struct ieee80211com {scalar_t__ ic_htprotmode; int ic_curhtprotmode; } ;
struct TYPE_4__ {struct mwl_hal_vap* mv_hvap; } ;
struct TYPE_3__ {int ni_chan; } ;


 int HTPROTECT_AUTO ;
 int HTPROTECT_NONE ;
 int IEEE80211_FHT_SHORTGI20 ;
 int IEEE80211_FHT_SHORTGI40 ;
 int IEEE80211_HTINFO_OPMODE ;
 scalar_t__ IEEE80211_M_HOSTAP ;
 scalar_t__ IEEE80211_M_IBSS ;
 scalar_t__ IEEE80211_M_MBSS ;
 scalar_t__ IEEE80211_PROT_NONE ;
 int IEEE80211_S_RUN ;
 int MS (int ,int ) ;
 TYPE_2__* MWL_VAP (struct ieee80211vap*) ;
 int mwl_beacon_setup (struct ieee80211vap*) ;
 int mwl_hal_sethtgi (struct mwl_hal_vap*,int) ;
 int mwl_hal_setnprot (struct mwl_hal_vap*,int ) ;
 int mwl_hal_setnprotmode (struct mwl_hal_vap*,int ) ;
 int mwl_hal_setrtsthreshold (struct mwl_hal_vap*,int ) ;
 int mwl_setapmode (struct ieee80211vap*,int ) ;
 int mwl_setrates (struct ieee80211vap*) ;

__attribute__((used)) static int
mwl_reset_vap(struct ieee80211vap *vap, int state)
{
 struct mwl_hal_vap *hvap = MWL_VAP(vap)->mv_hvap;
 struct ieee80211com *ic = vap->iv_ic;

 if (state == IEEE80211_S_RUN)
  mwl_setrates(vap);

 mwl_hal_setrtsthreshold(hvap, vap->iv_rtsthreshold);

 mwl_hal_sethtgi(hvap, (vap->iv_flags_ht &
     (IEEE80211_FHT_SHORTGI20|IEEE80211_FHT_SHORTGI40)) ? 1 : 0);
 mwl_hal_setnprot(hvap, ic->ic_htprotmode == IEEE80211_PROT_NONE ?
     HTPROTECT_NONE : HTPROTECT_AUTO);



 if (state == IEEE80211_S_RUN &&
     (vap->iv_opmode == IEEE80211_M_HOSTAP ||
      vap->iv_opmode == IEEE80211_M_MBSS ||
      vap->iv_opmode == IEEE80211_M_IBSS)) {
  mwl_setapmode(vap, vap->iv_bss->ni_chan);
  mwl_hal_setnprotmode(hvap,
      MS(ic->ic_curhtprotmode, IEEE80211_HTINFO_OPMODE));
  return mwl_beacon_setup(vap);
 }
 return 0;
}
