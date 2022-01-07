
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wmeParams {int dummy; } ;
struct ieee80211vap {TYPE_3__* iv_bss; struct ieee80211com* iv_ic; } ;
struct TYPE_5__ {struct wmeParams* cap_wmeParams; } ;
struct TYPE_4__ {struct wmeParams* cap_wmeParams; scalar_t__ cap_info; } ;
struct ieee80211_wme_state {int wme_hipri_switch_thresh; int wme_flags; TYPE_2__ wme_wmeBssChanParams; TYPE_1__ wme_wmeChanParams; } ;
struct ieee80211com {int ic_caps; int ic_nrunning; scalar_t__ ic_bsschan; scalar_t__ ic_opmode; struct ieee80211_wme_state ic_wme; } ;
typedef int paramType ;
typedef enum ieee80211_phymode { ____Placeholder_ieee80211_phymode } ieee80211_phymode ;
struct TYPE_6__ {int ni_intval; } ;


 int HIGH_PRI_SWITCH_THRESH ;
 scalar_t__ IEEE80211_CHAN_ANYC ;
 int IEEE80211_C_WME ;
 int IEEE80211_LOCK_ASSERT (struct ieee80211com*) ;
 int IEEE80211_MODE_AUTO ;
 scalar_t__ IEEE80211_M_HOSTAP ;




 int WME_F_AGGRMODE ;
 int WME_NUM_AC ;
 int * bssPhyParamForAC_BE ;
 int * bssPhyParamForAC_VI ;
 int * bssPhyParamForAC_VO ;
 int ieee80211_chan2mode (scalar_t__) ;
 int ieee80211_wme_updateparams (struct ieee80211vap*) ;
 int * phyParamForAC_BE ;
 int * phyParamForAC_BK ;
 int * phyParamForAC_VI ;
 int * phyParamForAC_VO ;
 int setwmeparams (struct ieee80211vap*,char*,int,struct wmeParams*,int const*) ;

__attribute__((used)) static void
ieee80211_wme_initparams_locked(struct ieee80211vap *vap)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct ieee80211_wme_state *wme = &ic->ic_wme;
 const paramType *pPhyParam, *pBssPhyParam;
 struct wmeParams *wmep;
 enum ieee80211_phymode mode;
 int i;

 IEEE80211_LOCK_ASSERT(ic);

 if ((ic->ic_caps & IEEE80211_C_WME) == 0 || ic->ic_nrunning > 1)
  return;
 wme->wme_wmeChanParams.cap_info = 0;







 if (ic->ic_bsschan != IEEE80211_CHAN_ANYC)
  mode = ieee80211_chan2mode(ic->ic_bsschan);
 else
  mode = IEEE80211_MODE_AUTO;
 for (i = 0; i < WME_NUM_AC; i++) {
  switch (i) {
  case 130:
   pPhyParam = &phyParamForAC_BK[mode];
   pBssPhyParam = &phyParamForAC_BK[mode];
   break;
  case 129:
   pPhyParam = &phyParamForAC_VI[mode];
   pBssPhyParam = &bssPhyParamForAC_VI[mode];
   break;
  case 128:
   pPhyParam = &phyParamForAC_VO[mode];
   pBssPhyParam = &bssPhyParamForAC_VO[mode];
   break;
  case 131:
  default:
   pPhyParam = &phyParamForAC_BE[mode];
   pBssPhyParam = &bssPhyParamForAC_BE[mode];
   break;
  }
  wmep = &wme->wme_wmeChanParams.cap_wmeParams[i];
  if (ic->ic_opmode == IEEE80211_M_HOSTAP) {
   setwmeparams(vap, "chan", i, wmep, pPhyParam);
  } else {
   setwmeparams(vap, "chan", i, wmep, pBssPhyParam);
  }
  wmep = &wme->wme_wmeBssChanParams.cap_wmeParams[i];
  setwmeparams(vap, "bss ", i, wmep, pBssPhyParam);
 }

 if (vap->iv_bss != ((void*)0)) {






  wme->wme_hipri_switch_thresh =
   (HIGH_PRI_SWITCH_THRESH * vap->iv_bss->ni_intval) / 100;
  wme->wme_flags &= ~WME_F_AGGRMODE;
  ieee80211_wme_updateparams(vap);
 }
}
