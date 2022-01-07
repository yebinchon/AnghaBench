
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_ampdu_rx_oor; } ;
struct ieee80211vap {TYPE_1__ iv_stats; } ;
struct ieee80211_rx_ampdu {int rxa_wnd; int rxa_start; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; } ;


 int IEEE80211_SEQ_ADD (int ,int) ;
 scalar_t__ ampdu_dispatch_slot (struct ieee80211_rx_ampdu*,struct ieee80211_node*,int) ;
 int ampdu_rx_moveup (struct ieee80211_rx_ampdu*,struct ieee80211_node*,int,int) ;

__attribute__((used)) static void
ampdu_rx_dispatch(struct ieee80211_rx_ampdu *rap, struct ieee80211_node *ni)
{
 struct ieee80211vap *vap = ni->ni_vap;
 int i;


 for (i = 1; i < rap->rxa_wnd; i++) {
  if (ampdu_dispatch_slot(rap, ni, i) == 0)
   break;
 }





 ampdu_rx_moveup(rap, ni, i, -1);





 rap->rxa_start = IEEE80211_SEQ_ADD(rap->rxa_start, i);
 vap->iv_stats.is_ampdu_rx_oor += i;
}
