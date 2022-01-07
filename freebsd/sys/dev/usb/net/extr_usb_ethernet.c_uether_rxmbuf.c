
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ether {int ue_rxq; struct ifnet* ue_ifp; } ;
struct TYPE_2__ {unsigned int len; struct ifnet* rcvif; } ;
struct mbuf {unsigned int m_len; TYPE_1__ m_pkthdr; } ;
struct ifnet {int dummy; } ;


 int IFCOUNTER_IPACKETS ;
 int MA_OWNED ;
 int UE_LOCK_ASSERT (struct usb_ether*,int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int mbufq_enqueue (int *,struct mbuf*) ;

int
uether_rxmbuf(struct usb_ether *ue, struct mbuf *m,
    unsigned int len)
{
 struct ifnet *ifp = ue->ue_ifp;

 UE_LOCK_ASSERT(ue, MA_OWNED);


 if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);
 m->m_pkthdr.rcvif = ifp;
 m->m_pkthdr.len = m->m_len = len;


 (void)mbufq_enqueue(&ue->ue_rxq, m);
 return (0);
}
