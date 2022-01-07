
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int len; } ;
struct mbuf {int m_flags; TYPE_2__ m_pkthdr; } ;
struct ifnet {int dummy; } ;
struct ieee80211_node {TYPE_1__* ni_vap; } ;
struct TYPE_3__ {struct ifnet* iv_ifp; } ;


 int IFCOUNTER_OBYTES ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OMCASTS ;
 int IFCOUNTER_OPACKETS ;
 int M_MCAST ;
 int M_TXCB ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int ieee80211_process_callback (struct ieee80211_node*,struct mbuf*,int) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;

void
ieee80211_tx_complete(struct ieee80211_node *ni, struct mbuf *m, int status)
{

 if (ni != ((void*)0)) {
  struct ifnet *ifp = ni->ni_vap->iv_ifp;

  if (status == 0) {
   if_inc_counter(ifp, IFCOUNTER_OBYTES, m->m_pkthdr.len);
   if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
   if (m->m_flags & M_MCAST)
    if_inc_counter(ifp, IFCOUNTER_OMCASTS, 1);
  } else
   if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  if (m->m_flags & M_TXCB)
   ieee80211_process_callback(ni, m, status);
  ieee80211_free_node(ni);
 }
 m_freem(m);
}
