
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; struct are_softc* if_softc; } ;
struct TYPE_2__ {int are_tx_cnt; } ;
struct are_softc {scalar_t__ are_link_status; TYPE_1__ are_cdata; } ;


 int ARE_LOCK_ASSERT (struct are_softc*) ;
 int ARE_TX_RING_CNT ;
 int CSR_READ_4 (struct are_softc*,int ) ;
 int CSR_STATUS ;
 int CSR_TXPOLL ;
 int CSR_WRITE_4 (struct are_softc*,int ,int ) ;
 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 int TXPOLL_TPD ;
 scalar_t__ are_encap (struct are_softc*,struct mbuf**) ;

__attribute__((used)) static void
are_start_locked(struct ifnet *ifp)
{
 struct are_softc *sc;
 struct mbuf *m_head;
 int enq;
 int txstat;

 sc = ifp->if_softc;

 ARE_LOCK_ASSERT(sc);

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING || sc->are_link_status == 0 )
  return;

 for (enq = 0; !IFQ_DRV_IS_EMPTY(&ifp->if_snd) &&
     sc->are_cdata.are_tx_cnt < ARE_TX_RING_CNT - 2; ) {
  IFQ_DRV_DEQUEUE(&ifp->if_snd, m_head);
  if (m_head == ((void*)0))
   break;





  if (are_encap(sc, &m_head)) {
   if (m_head == ((void*)0))
    break;
   IFQ_DRV_PREPEND(&ifp->if_snd, m_head);
   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
   break;
  }

  enq++;




  ETHER_BPF_MTAP(ifp, m_head);
 }

 if (enq > 0) {
  txstat = (CSR_READ_4(sc, CSR_STATUS) >> 20) & 7;
  if (txstat == 0 || txstat == 6) {

   CSR_WRITE_4(sc, CSR_TXPOLL, TXPOLL_TPD);
  }
 }
}
