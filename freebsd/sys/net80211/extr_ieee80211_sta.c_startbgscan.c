
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int iv_flags; int iv_flags_ext; scalar_t__ iv_bgscanidle; scalar_t__ iv_bgscanintvl; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_flags; scalar_t__ ic_lastdata; scalar_t__ ic_lastscan; int ic_curchan; } ;


 int IEEE80211_FEXT_SCAN_OFFLOAD ;
 int IEEE80211_F_BGSCAN ;
 int IEEE80211_F_CSAPENDING ;
 int IEEE80211_IS_CHAN_DTURBO (int ) ;
 scalar_t__ ieee80211_time_after (int ,scalar_t__) ;
 int ticks ;

__attribute__((used)) static __inline int
startbgscan(struct ieee80211vap *vap)
{
 struct ieee80211com *ic = vap->iv_ic;

 return ((vap->iv_flags & IEEE80211_F_BGSCAN) &&
     (ic->ic_flags & IEEE80211_F_CSAPENDING) == 0 &&



     ieee80211_time_after(ticks, ic->ic_lastscan + vap->iv_bgscanintvl) &&
     ((vap->iv_flags_ext & IEEE80211_FEXT_SCAN_OFFLOAD) ||
      ieee80211_time_after(ticks, ic->ic_lastdata + vap->iv_bgscanidle)));
}
