
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wtap_vap {int dummy; } ;
struct TYPE_2__ {scalar_t__ rcvif; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211com {int dummy; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; } ;


 int M_TXCB ;
 struct wtap_vap* WTAP_VAP (struct ieee80211vap*) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int ieee80211_process_callback (struct ieee80211_node*,struct mbuf*,int ) ;
 scalar_t__ ieee80211_radiotap_active_vap (struct ieee80211vap*) ;
 int ieee80211_radiotap_tx (struct ieee80211vap*,struct mbuf*) ;
 int printf (char*) ;
 int wtap_medium_enqueue (struct wtap_vap*,struct mbuf*) ;

__attribute__((used)) static int
wtap_transmit(struct ieee80211com *ic, struct mbuf *m)
{
 struct ieee80211_node *ni =
     (struct ieee80211_node *) m->m_pkthdr.rcvif;
 struct ieee80211vap *vap = ni->ni_vap;
 struct wtap_vap *avp = WTAP_VAP(vap);

 if(ni == ((void*)0)){
  printf("m->m_pkthdr.rcvif is NULL we cant radiotap_tx\n");
 }else{
  if (ieee80211_radiotap_active_vap(vap))
   ieee80211_radiotap_tx(vap, m);
 }
 if (m->m_flags & M_TXCB)
  ieee80211_process_callback(ni, m, 0);
 ieee80211_free_node(ni);
 return wtap_medium_enqueue(avp, m);
}
