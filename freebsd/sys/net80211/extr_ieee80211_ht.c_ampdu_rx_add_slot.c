
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct TYPE_4__ {int is_rx_dup; int is_ampdu_rx_reorder; } ;
struct ieee80211vap {TYPE_2__ iv_stats; } ;
struct ieee80211_rx_ampdu {scalar_t__ rxa_wnd; int rxa_start; int rxa_qbytes; int rxa_qframes; struct mbuf** rxa_m; } ;
struct ieee80211_node {int ni_macaddr; struct ieee80211vap* ni_vap; } ;
typedef int ieee80211_seq ;


 int IEEE80211_DISCARD_MAC (struct ieee80211vap*,int,int ,char*,char*,int ,int,int ,int ) ;
 int IEEE80211_MSG_11N ;
 int IEEE80211_MSG_INPUT ;
 int IEEE80211_NODE_STAT (struct ieee80211_node*,int ) ;
 int IEEE80211_SEQ_ADD (int ,scalar_t__) ;
 int m_freem (struct mbuf*) ;
 int rx_dup ;

__attribute__((used)) static int
ampdu_rx_add_slot(struct ieee80211_rx_ampdu *rap, int off, int tid,
    ieee80211_seq rxseq,
    struct ieee80211_node *ni,
    struct mbuf *m)
{
 struct ieee80211vap *vap = ni->ni_vap;

 if (rap->rxa_m[off] == ((void*)0)) {
  rap->rxa_m[off] = m;
  rap->rxa_qframes++;
  rap->rxa_qbytes += m->m_pkthdr.len;
  vap->iv_stats.is_ampdu_rx_reorder++;
  return (0);
 } else {
  IEEE80211_DISCARD_MAC(vap,
      IEEE80211_MSG_INPUT | IEEE80211_MSG_11N,
      ni->ni_macaddr, "a-mpdu duplicate",
      "seqno %u tid %u BA win <%u:%u>",
      rxseq, tid, rap->rxa_start,
      IEEE80211_SEQ_ADD(rap->rxa_start, rap->rxa_wnd-1));
  vap->iv_stats.is_rx_dup++;
  IEEE80211_NODE_STAT(ni, rx_dup);
  m_freem(m);
  return (-1);
 }
}
