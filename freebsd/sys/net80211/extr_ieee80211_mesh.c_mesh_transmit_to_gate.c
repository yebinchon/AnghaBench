
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
struct ieee80211vap {int iv_ic; struct ifnet* iv_ifp; } ;
struct ieee80211_node {int dummy; } ;
struct ieee80211_mesh_route {int rt_dest; } ;


 int IEEE80211_TX_UNLOCK_ASSERT (int ) ;
 int IFCOUNTER_OERRORS ;
 struct ieee80211_node* ieee80211_mesh_find_txnode (struct ieee80211vap*,int ) ;
 int ieee80211_vap_pkt_send_dest (struct ieee80211vap*,struct mbuf*,struct ieee80211_node*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
mesh_transmit_to_gate(struct ieee80211vap *vap, struct mbuf *m,
    struct ieee80211_mesh_route *rt_gate)
{
 struct ifnet *ifp = vap->iv_ifp;
 struct ieee80211_node *ni;

 IEEE80211_TX_UNLOCK_ASSERT(vap->iv_ic);

 ni = ieee80211_mesh_find_txnode(vap, rt_gate->rt_dest);
 if (ni == ((void*)0)) {
  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  m_freem(m);
  return;
 }







 (void) ieee80211_vap_pkt_send_dest(vap, m, ni);
}
