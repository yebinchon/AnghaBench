
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_nextpkt; } ;
struct ieee80211com {int (* ic_node_getsignal ) (struct ieee80211_node*,int *,int *) ;int ic_stageq; } ;
struct ieee80211_node {int ni_vap; int ni_macaddr; struct ieee80211com* ni_ic; } ;
typedef int int8_t ;


 int IEEE80211_MSG_WDS ;
 int IEEE80211_NOTE (int ,int ,struct ieee80211_node*,char*,char*) ;
 struct mbuf* ieee80211_ageq_remove (int *,void*) ;
 int ieee80211_input (struct ieee80211_node*,struct mbuf*,int ,int ) ;
 scalar_t__ ieee80211_mac_hash (struct ieee80211com*,int ) ;
 int stub1 (struct ieee80211_node*,int *,int *) ;

__attribute__((used)) static void
wds_flush(struct ieee80211_node *ni)
{
 struct ieee80211com *ic = ni->ni_ic;
 struct mbuf *m, *next;
 int8_t rssi, nf;

 m = ieee80211_ageq_remove(&ic->ic_stageq,
     (void *)(uintptr_t) ieee80211_mac_hash(ic, ni->ni_macaddr));
 if (m == ((void*)0))
  return;

 IEEE80211_NOTE(ni->ni_vap, IEEE80211_MSG_WDS, ni,
     "%s", "flush wds queue");
 ic->ic_node_getsignal(ni, &rssi, &nf);
 for (; m != ((void*)0); m = next) {
  next = m->m_nextpkt;
  m->m_nextpkt = ((void*)0);
  ieee80211_input(ni, m, rssi, nf);
 }
}
