
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vlan_snd_tag {TYPE_2__* tag; } ;
struct TYPE_3__ {int len; int csum_flags; struct m_snd_tag* snd_tag; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
struct m_snd_tag {struct ifnet* ifp; } ;
struct ifvlan {int ifv_pcp; int ifv_vid; } ;
struct ifnet {int (* if_transmit ) (struct ifnet*,struct mbuf*) ;struct ifvlan* if_softc; } ;
struct TYPE_4__ {struct ifnet* ifp; } ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int CSUM_SND_TAG ;
 int EAGAIN ;
 int ENETDOWN ;
 int IFCOUNTER_OBYTES ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OMCASTS ;
 int IFCOUNTER_OPACKETS ;
 int MPASS (int) ;
 int M_BCAST ;
 int M_MCAST ;
 int NET_EPOCH_ASSERT () ;
 struct ifnet* PARENT (struct ifvlan*) ;
 int * TRUNK (struct ifvlan*) ;
 int UP_AND_RUNNING (struct ifnet*) ;
 int ether_8021q_frame (struct mbuf**,struct ifnet*,struct ifnet*,int ,int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;
 struct m_snd_tag* m_snd_tag_ref (TYPE_2__*) ;
 int m_snd_tag_rele (struct m_snd_tag*) ;
 struct vlan_snd_tag* mst_to_vst (struct m_snd_tag*) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static int
vlan_transmit(struct ifnet *ifp, struct mbuf *m)
{
 struct ifvlan *ifv;
 struct ifnet *p;
 int error, len, mcast;

 NET_EPOCH_ASSERT();

 ifv = ifp->if_softc;
 if (TRUNK(ifv) == ((void*)0)) {
  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  m_freem(m);
  return (ENETDOWN);
 }
 p = PARENT(ifv);
 len = m->m_pkthdr.len;
 mcast = (m->m_flags & (M_MCAST | M_BCAST)) ? 1 : 0;

 BPF_MTAP(ifp, m);
 if (!UP_AND_RUNNING(p)) {
  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  m_freem(m);
  return (ENETDOWN);
 }

 if (!ether_8021q_frame(&m, ifp, p, ifv->ifv_vid, ifv->ifv_pcp)) {
  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  return (0);
 }




 error = (p->if_transmit)(p, m);
 if (error == 0) {
  if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
  if_inc_counter(ifp, IFCOUNTER_OBYTES, len);
  if_inc_counter(ifp, IFCOUNTER_OMCASTS, mcast);
 } else
  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
 return (error);
}
