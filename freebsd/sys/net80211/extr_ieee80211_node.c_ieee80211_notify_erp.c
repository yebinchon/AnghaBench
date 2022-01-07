
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;


 int IEEE80211_LOCK (struct ieee80211com*) ;
 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 int ieee80211_notify_erp_locked (struct ieee80211com*) ;

void
ieee80211_notify_erp(struct ieee80211com *ic)
{
 IEEE80211_LOCK(ic);
 ieee80211_notify_erp_locked(ic);
 IEEE80211_UNLOCK(ic);
}
