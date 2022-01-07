
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {scalar_t__ iv_opmode; } ;


 scalar_t__ IEEE80211_M_HOSTAP ;
 scalar_t__ IEEE80211_M_IBSS ;
 int KASSERT (int,char*) ;

__attribute__((used)) static void
ieee80211_update_ps(struct ieee80211vap *vap, int nsta)
{

 KASSERT(vap->iv_opmode == IEEE80211_M_HOSTAP ||
  vap->iv_opmode == IEEE80211_M_IBSS,
  ("operating mode %u", vap->iv_opmode));
}
