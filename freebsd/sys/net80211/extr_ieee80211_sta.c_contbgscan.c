
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int iv_flags_ext; scalar_t__ iv_state; scalar_t__ iv_bgscanidle; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_flags_ext; int ic_flags; scalar_t__ ic_lastdata; } ;


 int IEEE80211_FEXT_BGSCAN ;
 int IEEE80211_FEXT_SCAN_OFFLOAD ;
 int IEEE80211_F_CSAPENDING ;
 scalar_t__ IEEE80211_S_RUN ;
 scalar_t__ ieee80211_time_after (int ,scalar_t__) ;
 int ticks ;

__attribute__((used)) static __inline int
contbgscan(struct ieee80211vap *vap)
{
 struct ieee80211com *ic = vap->iv_ic;

 return ((ic->ic_flags_ext & IEEE80211_FEXT_BGSCAN) &&
     (ic->ic_flags & IEEE80211_F_CSAPENDING) == 0 &&
     !(vap->iv_flags_ext & IEEE80211_FEXT_SCAN_OFFLOAD) &&
     vap->iv_state == IEEE80211_S_RUN &&
     ieee80211_time_after(ticks, ic->ic_lastdata + vap->iv_bgscanidle));
}
