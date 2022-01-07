
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_stops; } ;
struct oce_wq {int queue_index; TYPE_1__ tx_stats; struct buf_ring* br; } ;
struct TYPE_4__ {int len; } ;
struct mbuf {int m_flags; TYPE_2__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int if_softc; } ;
struct buf_ring {int dummy; } ;
typedef int POCE_SOFTC ;


 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFCOUNTER_OBYTES ;
 int IFCOUNTER_OMCASTS ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int M_MCAST ;
 int drbr_advance (struct ifnet*,struct buf_ring*) ;
 int drbr_enqueue (struct ifnet*,struct buf_ring*,struct mbuf*) ;
 struct mbuf* drbr_peek (struct ifnet*,struct buf_ring*) ;
 int drbr_putback (struct ifnet*,struct buf_ring*,struct mbuf*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 scalar_t__ oce_tx (int ,struct mbuf**,int) ;

__attribute__((used)) static int
oce_multiq_transmit(struct ifnet *ifp, struct mbuf *m, struct oce_wq *wq)
{
 POCE_SOFTC sc = ifp->if_softc;
 int status = 0, queue_index = 0;
 struct mbuf *next = ((void*)0);
 struct buf_ring *br = ((void*)0);

 br = wq->br;
 queue_index = wq->queue_index;

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
  IFF_DRV_RUNNING) {
  if (m != ((void*)0))
   status = drbr_enqueue(ifp, br, m);
  return status;
 }

 if (m != ((void*)0)) {
  if ((status = drbr_enqueue(ifp, br, m)) != 0)
   return status;
 }
 while ((next = drbr_peek(ifp, br)) != ((void*)0)) {
  if (oce_tx(sc, &next, queue_index)) {
   if (next == ((void*)0)) {
    drbr_advance(ifp, br);
   } else {
    drbr_putback(ifp, br, next);
    wq->tx_stats.tx_stops ++;
    ifp->if_drv_flags |= IFF_DRV_OACTIVE;
   }
   break;
  }
  drbr_advance(ifp, br);
  if_inc_counter(ifp, IFCOUNTER_OBYTES, next->m_pkthdr.len);
  if (next->m_flags & M_MCAST)
   if_inc_counter(ifp, IFCOUNTER_OMCASTS, 1);
  ETHER_BPF_MTAP(ifp, next);
 }

 return 0;
}
