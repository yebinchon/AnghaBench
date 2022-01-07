
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct ieee80211vap {scalar_t__ iv_opmode; scalar_t__ iv_max_aid; int (* iv_update_beacon ) (struct ieee80211vap*,int ) ;int iv_ps_pending; int iv_tim_bitmap; } ;
struct ieee80211com {int dummy; } ;
struct ieee80211_node {int ni_associd; struct ieee80211com* ni_ic; struct ieee80211vap* ni_vap; } ;


 scalar_t__ IEEE80211_AID (int ) ;
 int IEEE80211_BEACON_TIM ;
 int IEEE80211_LOCK (struct ieee80211com*) ;
 scalar_t__ IEEE80211_M_HOSTAP ;
 scalar_t__ IEEE80211_M_IBSS ;
 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 int KASSERT (int,char*) ;
 int clrbit (int ,scalar_t__) ;
 scalar_t__ isset (int ,scalar_t__) ;
 int setbit (int ,scalar_t__) ;
 int stub1 (struct ieee80211vap*,int ) ;

__attribute__((used)) static int
ieee80211_set_tim(struct ieee80211_node *ni, int set)
{
 struct ieee80211vap *vap = ni->ni_vap;
 struct ieee80211com *ic = ni->ni_ic;
 uint16_t aid;
 int changed;

 KASSERT(vap->iv_opmode == IEEE80211_M_HOSTAP ||
  vap->iv_opmode == IEEE80211_M_IBSS,
  ("operating mode %u", vap->iv_opmode));

 aid = IEEE80211_AID(ni->ni_associd);
 KASSERT(aid < vap->iv_max_aid,
  ("bogus aid %u, max %u", aid, vap->iv_max_aid));

 IEEE80211_LOCK(ic);
 changed = (set != (isset(vap->iv_tim_bitmap, aid) != 0));
 if (changed) {
  if (set) {
   setbit(vap->iv_tim_bitmap, aid);
   vap->iv_ps_pending++;
  } else {
   clrbit(vap->iv_tim_bitmap, aid);
   vap->iv_ps_pending--;
  }

  vap->iv_update_beacon(vap, IEEE80211_BEACON_TIM);
 }
 IEEE80211_UNLOCK(ic);

 return changed;
}
