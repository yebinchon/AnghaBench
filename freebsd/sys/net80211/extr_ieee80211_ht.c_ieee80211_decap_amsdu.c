
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct TYPE_4__ {int is_amsdu_split; int is_amsdu_tooshort; int is_amsdu_decap; } ;
struct ieee80211vap {int (* iv_deliver_data ) (struct ieee80211vap*,struct ieee80211_node*,struct mbuf*) ;TYPE_2__ iv_stats; } ;
struct ieee80211_node {int ni_macaddr; struct ieee80211vap* ni_vap; } ;
struct ether_header {int dummy; } ;


 int IEEE80211_DISCARD_MAC (struct ieee80211vap*,int ,int ,char*,char*,char*) ;
 int IEEE80211_MSG_ANY ;
 int M_NOWAIT ;
 struct mbuf* ieee80211_decap1 (struct mbuf*,int*) ;
 int m_adj (struct mbuf*,int) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_split (struct mbuf*,int,int ) ;
 int roundup2 (int,int) ;
 int stub1 (struct ieee80211vap*,struct ieee80211_node*,struct mbuf*) ;

struct mbuf *
ieee80211_decap_amsdu(struct ieee80211_node *ni, struct mbuf *m)
{
 struct ieee80211vap *vap = ni->ni_vap;
 int framelen;
 struct mbuf *n;


 m_adj(m, sizeof(struct ether_header));

 vap->iv_stats.is_amsdu_decap++;

 for (;;) {






  m = ieee80211_decap1(m, &framelen);
  if (m == ((void*)0)) {
   IEEE80211_DISCARD_MAC(vap, IEEE80211_MSG_ANY,
       ni->ni_macaddr, "a-msdu", "%s", "decap failed");
   vap->iv_stats.is_amsdu_tooshort++;
   return ((void*)0);
  }
  if (m->m_pkthdr.len == framelen)
   break;
  n = m_split(m, framelen, M_NOWAIT);
  if (n == ((void*)0)) {
   IEEE80211_DISCARD_MAC(vap, IEEE80211_MSG_ANY,
       ni->ni_macaddr, "a-msdu",
       "%s", "unable to split encapsulated frames");
   vap->iv_stats.is_amsdu_split++;
   m_freem(m);
   return ((void*)0);
  }
  vap->iv_deliver_data(vap, ni, m);





  m = n;
  m_adj(m, roundup2(framelen, 4) - framelen);
 }
 return m;
}
