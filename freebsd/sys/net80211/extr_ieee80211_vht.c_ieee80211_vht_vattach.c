
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int iv_flags_vht; int iv_vht_mcsinfo; int iv_vhtextcaps; int iv_vhtcaps; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_vht_mcsinfo; int ic_vhtextcaps; int ic_vhtcaps; } ;
struct ieee80211_vht_mcs_info {int dummy; } ;


 int IEEE80211_CONF_VHT (struct ieee80211com*) ;
 int IEEE80211_FVHT_USEVHT40 ;
 int IEEE80211_FVHT_USEVHT80 ;
 int IEEE80211_FVHT_VHT ;
 int memcpy (int *,int *,int) ;

void
ieee80211_vht_vattach(struct ieee80211vap *vap)
{
 struct ieee80211com *ic = vap->iv_ic;

 if (! IEEE80211_CONF_VHT(ic))
  return;

 vap->iv_vhtcaps = ic->ic_vhtcaps;
 vap->iv_vhtextcaps = ic->ic_vhtextcaps;


 vap->iv_flags_vht =
     IEEE80211_FVHT_VHT
     | IEEE80211_FVHT_USEVHT40
     | IEEE80211_FVHT_USEVHT80;


 memcpy(&vap->iv_vht_mcsinfo, &ic->ic_vht_mcsinfo,
     sizeof(struct ieee80211_vht_mcs_info));
}
