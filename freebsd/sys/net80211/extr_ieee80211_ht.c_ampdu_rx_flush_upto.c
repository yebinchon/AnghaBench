
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_ampdu_rx_oor; } ;
struct ieee80211vap {TYPE_1__ iv_stats; } ;
struct ieee80211_rx_ampdu {int rxa_wnd; int rxa_start; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; } ;
typedef int ieee80211_seq ;


 int IEEE80211_SEQ_BA_BEFORE (int ,int ) ;
 int IEEE80211_SEQ_INC (int ) ;
 int ampdu_dispatch_slot (struct ieee80211_rx_ampdu*,struct ieee80211_node*,int) ;
 int ampdu_rx_moveup (struct ieee80211_rx_ampdu*,struct ieee80211_node*,int,int ) ;

__attribute__((used)) static void
ampdu_rx_flush_upto(struct ieee80211_node *ni,
 struct ieee80211_rx_ampdu *rap, ieee80211_seq winstart)
{
 struct ieee80211vap *vap = ni->ni_vap;
 ieee80211_seq seqno;
 int i, r;
 seqno = rap->rxa_start;
 for (i = 0; i < rap->rxa_wnd; i++) {
  r = ampdu_dispatch_slot(rap, ni, i);
  if (r == 0) {
   if (!IEEE80211_SEQ_BA_BEFORE(seqno, winstart))
    break;
  }
  vap->iv_stats.is_ampdu_rx_oor += r;
  seqno = IEEE80211_SEQ_INC(seqno);
 }




 ampdu_rx_moveup(rap, ni, i, winstart);







 rap->rxa_start = seqno;
}
