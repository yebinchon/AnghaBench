
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int ue_rxq; struct ifnet* ue_ifp; } ;
struct mbuf {int * m_nextpkt; } ;
struct ifnet {int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct epoch_tracker {int dummy; } ;


 int MA_OWNED ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 struct mbuf* STAILQ_NEXT (struct mbuf*,int ) ;
 int UE_LOCK (struct usb_ether*) ;
 int UE_LOCK_ASSERT (struct usb_ether*,int ) ;
 int UE_UNLOCK (struct usb_ether*) ;
 int m_stailqpkt ;
 struct mbuf* mbufq_flush (int *) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

void
uether_rxflush(struct usb_ether *ue)
{
 struct ifnet *ifp = ue->ue_ifp;
 struct epoch_tracker et;
 struct mbuf *m, *n;

 UE_LOCK_ASSERT(ue, MA_OWNED);

 n = mbufq_flush(&ue->ue_rxq);
 UE_UNLOCK(ue);
 NET_EPOCH_ENTER(et);
 while ((m = n) != ((void*)0)) {
  n = STAILQ_NEXT(m, m_stailqpkt);
  m->m_nextpkt = ((void*)0);
  ifp->if_input(ifp, m);
 }
 NET_EPOCH_EXIT(et);
 UE_LOCK(ue);
}
