
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {scalar_t__ iv_opmode; int iv_sta_ps; int iv_node_ps; int iv_set_tim; int iv_update_ps; } ;


 scalar_t__ IEEE80211_M_HOSTAP ;
 scalar_t__ IEEE80211_M_IBSS ;
 int ieee80211_node_pwrsave ;
 int ieee80211_set_tim ;
 int ieee80211_sta_pwrsave ;
 int ieee80211_update_ps ;

void
ieee80211_power_vattach(struct ieee80211vap *vap)
{
 if (vap->iv_opmode == IEEE80211_M_HOSTAP ||
     vap->iv_opmode == IEEE80211_M_IBSS) {

  vap->iv_update_ps = ieee80211_update_ps;
  vap->iv_set_tim = ieee80211_set_tim;
 }
 vap->iv_node_ps = ieee80211_node_pwrsave;
 vap->iv_sta_ps = ieee80211_sta_pwrsave;
}
