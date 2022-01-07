
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {scalar_t__ iv_opmode; scalar_t__ iv_roaming; int iv_flags; scalar_t__ iv_state; } ;
struct ieee80211_scan_state {struct ieee80211vap* ss_vap; } ;


 int IEEE80211_F_BGSCAN ;
 scalar_t__ IEEE80211_M_STA ;
 scalar_t__ IEEE80211_ROAMING_AUTO ;
 scalar_t__ IEEE80211_S_RUN ;
 int KASSERT (int,char*) ;
 int adhoc_age (struct ieee80211_scan_state*) ;
 int sta_roam_check (struct ieee80211_scan_state*,struct ieee80211vap*) ;

__attribute__((used)) static void
sta_age(struct ieee80211_scan_state *ss)
{
 struct ieee80211vap *vap = ss->ss_vap;

 adhoc_age(ss);
 KASSERT(vap->iv_opmode == IEEE80211_M_STA,
  ("wrong mode %u", vap->iv_opmode));
 if (vap->iv_roaming == IEEE80211_ROAMING_AUTO &&
     (vap->iv_flags & IEEE80211_F_BGSCAN) &&
     vap->iv_state >= IEEE80211_S_RUN)

  sta_roam_check(ss, vap);
}
