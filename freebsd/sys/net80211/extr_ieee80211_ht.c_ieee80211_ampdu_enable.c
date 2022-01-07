
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {scalar_t__* iv_ampdu_mintraffic; } ;
struct ieee80211_tx_ampdu {scalar_t__ txa_avgpps; scalar_t__ txa_attempts; int txa_pkts; int txa_tid; int txa_nextrequest; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; } ;


 int IEEE80211_MSG_11N ;
 int IEEE80211_NOTE (struct ieee80211vap*,int ,struct ieee80211_node*,char*,int ,int ,scalar_t__,int ,scalar_t__) ;
 size_t TID_TO_WME_AC (int ) ;
 scalar_t__ ieee80211_addba_maxtries ;
 scalar_t__ ieee80211_time_after (int ,int ) ;
 int * ieee80211_wme_acnames ;
 int ticks ;

__attribute__((used)) static int
ieee80211_ampdu_enable(struct ieee80211_node *ni,
 struct ieee80211_tx_ampdu *tap)
{
 struct ieee80211vap *vap = ni->ni_vap;

 if (tap->txa_avgpps <
     vap->iv_ampdu_mintraffic[TID_TO_WME_AC(tap->txa_tid)])
  return 0;

 if (tap->txa_attempts >= ieee80211_addba_maxtries &&
     ieee80211_time_after(ticks, tap->txa_nextrequest)) {





  return 0;
 }
 IEEE80211_NOTE(vap, IEEE80211_MSG_11N, ni,
     "enable AMPDU on tid %d (%s), avgpps %d pkts %d attempt %d",
     tap->txa_tid, ieee80211_wme_acnames[TID_TO_WME_AC(tap->txa_tid)],
     tap->txa_avgpps, tap->txa_pkts, tap->txa_attempts);
 return 1;
}
