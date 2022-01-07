
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211vap {scalar_t__ iv_opmode; int iv_flags; scalar_t__ iv_des_nssid; int iv_des_bssid; int iv_des_ssid; } ;
struct ieee80211com {int ic_chan_active; } ;
struct ieee80211_node {int ni_capinfo; int ni_bssid; int ni_rates; int ni_chan; struct ieee80211com* ni_ic; } ;


 int IEEE80211_ADDR_EQ (int ,int ) ;
 int IEEE80211_CAPINFO_ESS ;
 int IEEE80211_CAPINFO_IBSS ;
 int IEEE80211_CAPINFO_PRIVACY ;
 int IEEE80211_F_DESBSSID ;
 int IEEE80211_F_DOFRATE ;
 int IEEE80211_F_DONEGO ;
 int IEEE80211_F_JOIN ;
 int IEEE80211_F_PRIVACY ;
 scalar_t__ IEEE80211_M_IBSS ;
 int IEEE80211_RATE_BASIC ;
 int ieee80211_chan2ieee (struct ieee80211com*,int ) ;
 int ieee80211_fix_rate (struct ieee80211_node*,int *,int) ;
 scalar_t__ isclr (int ,int ) ;
 int match_ssid (struct ieee80211_node*,scalar_t__,int ) ;

__attribute__((used)) static int
check_bss(struct ieee80211vap *vap, struct ieee80211_node *ni)
{
 struct ieee80211com *ic = ni->ni_ic;
        uint8_t rate;

 if (isclr(ic->ic_chan_active, ieee80211_chan2ieee(ic, ni->ni_chan)))
  return 0;
 if (vap->iv_opmode == IEEE80211_M_IBSS) {
  if ((ni->ni_capinfo & IEEE80211_CAPINFO_IBSS) == 0)
   return 0;
 } else {
  if ((ni->ni_capinfo & IEEE80211_CAPINFO_ESS) == 0)
   return 0;
 }
 if (vap->iv_flags & IEEE80211_F_PRIVACY) {
  if ((ni->ni_capinfo & IEEE80211_CAPINFO_PRIVACY) == 0)
   return 0;
 } else {

  if (ni->ni_capinfo & IEEE80211_CAPINFO_PRIVACY)
   return 0;
 }
 rate = ieee80211_fix_rate(ni, &ni->ni_rates,
     IEEE80211_F_JOIN | IEEE80211_F_DONEGO | IEEE80211_F_DOFRATE);
 if (rate & IEEE80211_RATE_BASIC)
  return 0;
 if (vap->iv_des_nssid != 0 &&
     !match_ssid(ni, vap->iv_des_nssid, vap->iv_des_ssid))
  return 0;
 if ((vap->iv_flags & IEEE80211_F_DESBSSID) &&
     !IEEE80211_ADDR_EQ(vap->iv_des_bssid, ni->ni_bssid))
  return 0;
 return 1;
}
