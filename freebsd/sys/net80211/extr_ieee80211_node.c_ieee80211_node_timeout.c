
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_flags; int ic_inact; int ic_stageq; } ;


 int IEEE80211_F_CSAPENDING ;
 int IEEE80211_INACT_WAIT ;
 int IEEE80211_LOCK (struct ieee80211com*) ;
 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 int callout_reset (int *,int,void (*) (void*),struct ieee80211com*) ;
 int hz ;
 int ieee80211_ageq_age (int *,int) ;
 int ieee80211_erp_timeout (struct ieee80211com*) ;
 int ieee80211_ht_timeout (struct ieee80211com*) ;
 int ieee80211_scan_timeout (struct ieee80211com*) ;
 int ieee80211_timeout_stations (struct ieee80211com*) ;
 int ieee80211_vht_timeout (struct ieee80211com*) ;

void
ieee80211_node_timeout(void *arg)
{
 struct ieee80211com *ic = arg;
 if ((ic->ic_flags & IEEE80211_F_CSAPENDING) == 0) {
  ieee80211_scan_timeout(ic);
  ieee80211_timeout_stations(ic);
  ieee80211_ageq_age(&ic->ic_stageq, IEEE80211_INACT_WAIT);

  IEEE80211_LOCK(ic);
  ieee80211_erp_timeout(ic);
  ieee80211_ht_timeout(ic);
  ieee80211_vht_timeout(ic);
  IEEE80211_UNLOCK(ic);
 }
 callout_reset(&ic->ic_inact, IEEE80211_INACT_WAIT*hz,
  ieee80211_node_timeout, ic);
}
