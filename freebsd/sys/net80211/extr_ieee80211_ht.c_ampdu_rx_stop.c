
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_rx_ampdu {int rxa_flags; } ;
struct ieee80211_node {int dummy; } ;


 int IEEE80211_AGGR_RUNNING ;
 int IEEE80211_AGGR_WAITRX ;
 int IEEE80211_AGGR_XCHGPEND ;
 int ampdu_rx_purge (struct ieee80211_rx_ampdu*) ;

__attribute__((used)) static void
ampdu_rx_stop(struct ieee80211_node *ni, struct ieee80211_rx_ampdu *rap)
{

 ampdu_rx_purge(rap);
 rap->rxa_flags &= ~(IEEE80211_AGGR_RUNNING
     | IEEE80211_AGGR_XCHGPEND
     | IEEE80211_AGGR_WAITRX);
}
