
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {scalar_t__ iv_opmode; int iv_caps; int iv_opdetach; int iv_recv_ctl; int iv_recv_mgmt; int iv_input; int iv_newstate; } ;


 int IEEE80211_C_TDMA ;
 scalar_t__ IEEE80211_M_IBSS ;
 int adhoc_input ;
 int adhoc_newstate ;
 int adhoc_recv_ctl ;
 int adhoc_recv_mgmt ;
 int adhoc_vdetach ;
 int ahdemo_recv_mgmt ;
 int ieee80211_tdma_vattach (struct ieee80211vap*) ;

__attribute__((used)) static void
adhoc_vattach(struct ieee80211vap *vap)
{
 vap->iv_newstate = adhoc_newstate;
 vap->iv_input = adhoc_input;
 if (vap->iv_opmode == IEEE80211_M_IBSS)
  vap->iv_recv_mgmt = adhoc_recv_mgmt;
 else
  vap->iv_recv_mgmt = ahdemo_recv_mgmt;
 vap->iv_recv_ctl = adhoc_recv_ctl;
 vap->iv_opdetach = adhoc_vdetach;
}
