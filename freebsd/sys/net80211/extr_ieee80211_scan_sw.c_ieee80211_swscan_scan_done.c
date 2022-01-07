
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct ieee80211_scan_state* ic_scan; } ;
struct ieee80211_scan_state {int dummy; } ;


 int IEEE80211_LOCK_ASSERT (struct ieee80211com*) ;
 int scan_signal_locked (struct ieee80211_scan_state*,int ) ;

__attribute__((used)) static void
ieee80211_swscan_scan_done(struct ieee80211vap *vap)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct ieee80211_scan_state *ss = ic->ic_scan;

 IEEE80211_LOCK_ASSERT(ic);

 scan_signal_locked(ss, 0);
}
