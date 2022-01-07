
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211com {int (* ic_transmit ) (struct ieee80211com*,struct mbuf*) ;} ;
struct ieee80211_node {TYPE_2__* ni_vap; } ;
struct TYPE_4__ {int iv_ifp; } ;


 int IEEE80211_TX_LOCK_ASSERT (struct ieee80211com*) ;
 int IFCOUNTER_OERRORS ;
 int ieee80211_free_mbuf (struct mbuf*) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int if_inc_counter (int ,int ,int) ;
 int stub1 (struct ieee80211com*,struct mbuf*) ;

int
ieee80211_parent_xmitpkt(struct ieee80211com *ic, struct mbuf *m)
{
 int error;





 IEEE80211_TX_LOCK_ASSERT(ic);
 error = ic->ic_transmit(ic, m);
 if (error) {
  struct ieee80211_node *ni;

  ni = (struct ieee80211_node *)m->m_pkthdr.rcvif;


  if_inc_counter(ni->ni_vap->iv_ifp, IFCOUNTER_OERRORS, 1);
  ieee80211_free_node(ni);
  ieee80211_free_mbuf(m);
 }
 return (error);
}
