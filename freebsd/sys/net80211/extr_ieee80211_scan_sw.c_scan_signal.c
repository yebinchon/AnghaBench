
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct ieee80211_scan_state {struct ieee80211com* ss_ic; } ;


 int IEEE80211_LOCK (struct ieee80211com*) ;
 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 int IEEE80211_UNLOCK_ASSERT (struct ieee80211com*) ;
 int scan_signal_locked (struct ieee80211_scan_state*,int) ;

__attribute__((used)) static void
scan_signal(struct ieee80211_scan_state *ss, int iflags)
{
 struct ieee80211com *ic = ss->ss_ic;

 IEEE80211_UNLOCK_ASSERT(ic);

 IEEE80211_LOCK(ic);
 scan_signal_locked(ss, iflags);
 IEEE80211_UNLOCK(ic);
}
