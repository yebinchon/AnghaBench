
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nge_tx_cnt; int nge_tx_ring_map; int nge_tx_ring_tag; } ;
struct nge_softc {int nge_flags; int nge_watchdog_timer; TYPE_1__ nge_cdata; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; struct nge_softc* if_softc; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 int NGE_CSR ;
 int NGE_CSR_TX_ENABLE ;
 int NGE_FLAG_LINK ;
 int NGE_LOCK_ASSERT (struct nge_softc*) ;
 int NGE_SETBIT (struct nge_softc*,int ,int ) ;
 int NGE_TX_RING_CNT ;
 int bus_dmamap_sync (int ,int ,int) ;
 scalar_t__ nge_encap (struct nge_softc*,struct mbuf**) ;

__attribute__((used)) static void
nge_start_locked(struct ifnet *ifp)
{
 struct nge_softc *sc;
 struct mbuf *m_head;
 int enq;

 sc = ifp->if_softc;

 NGE_LOCK_ASSERT(sc);

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING || (sc->nge_flags & NGE_FLAG_LINK) == 0)
  return;

 for (enq = 0; !IFQ_DRV_IS_EMPTY(&ifp->if_snd) &&
     sc->nge_cdata.nge_tx_cnt < NGE_TX_RING_CNT - 2; ) {
  IFQ_DRV_DEQUEUE(&ifp->if_snd, m_head);
  if (m_head == ((void*)0))
   break;





  if (nge_encap(sc, &m_head)) {
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
  bus_dmamap_sync(sc->nge_cdata.nge_tx_ring_tag,
      sc->nge_cdata.nge_tx_ring_map,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

  NGE_SETBIT(sc, NGE_CSR, NGE_CSR_TX_ENABLE);


  sc->nge_watchdog_timer = 5;
 }
}
