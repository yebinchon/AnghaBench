
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rcvif; } ;
struct mbuf {int m_flags; int * m_nextpkt; TYPE_1__ m_pkthdr; } ;
struct ieee80211_node {int dummy; } ;


 int M_ENCAP ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
psq_mfree(struct mbuf *m)
{
 if (m->m_flags & M_ENCAP) {
  struct ieee80211_node *ni = (void *) m->m_pkthdr.rcvif;
  ieee80211_free_node(ni);
 }
 m->m_nextpkt = ((void*)0);
 m_freem(m);
}
