
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wmeParams {int wmep_logcwmin; int wmep_logcwmax; int wmep_aifsn; int wmep_txopLimit; int wmep_acm; int wmep_noackPolicy; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211req {int i_len; int i_type; int i_val; } ;
struct TYPE_4__ {struct wmeParams* cap_wmeParams; } ;
struct TYPE_3__ {struct wmeParams* cap_wmeParams; } ;
struct ieee80211_wme_state {TYPE_2__ wme_wmeChanParams; TYPE_1__ wme_wmeBssChanParams; } ;
struct ieee80211com {int ic_caps; struct ieee80211_wme_state ic_wme; } ;


 int EINVAL ;
 int IEEE80211_C_WME ;






 int IEEE80211_WMEPARAM_BSS ;
 int IEEE80211_WMEPARAM_VAL ;
 int WME_AC_BE ;
 int WME_NUM_AC ;

__attribute__((used)) static int
ieee80211_ioctl_getwmeparam(struct ieee80211vap *vap, struct ieee80211req *ireq)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct ieee80211_wme_state *wme = &ic->ic_wme;
 struct wmeParams *wmep;
 int ac;

 if ((ic->ic_caps & IEEE80211_C_WME) == 0)
  return EINVAL;

 ac = (ireq->i_len & IEEE80211_WMEPARAM_VAL);
 if (ac >= WME_NUM_AC)
  ac = WME_AC_BE;
 if (ireq->i_len & IEEE80211_WMEPARAM_BSS)
  wmep = &wme->wme_wmeBssChanParams.cap_wmeParams[ac];
 else
  wmep = &wme->wme_wmeChanParams.cap_wmeParams[ac];
 switch (ireq->i_type) {
 case 129:
  ireq->i_val = wmep->wmep_logcwmin;
  break;
 case 130:
  ireq->i_val = wmep->wmep_logcwmax;
  break;
 case 131:
  ireq->i_val = wmep->wmep_aifsn;
  break;
 case 128:
  ireq->i_val = wmep->wmep_txopLimit;
  break;
 case 132:
  wmep = &wme->wme_wmeBssChanParams.cap_wmeParams[ac];
  ireq->i_val = wmep->wmep_acm;
  break;
 case 133:
  wmep = &wme->wme_wmeChanParams.cap_wmeParams[ac];
  ireq->i_val = !wmep->wmep_noackPolicy;
  break;
 }
 return 0;
}
