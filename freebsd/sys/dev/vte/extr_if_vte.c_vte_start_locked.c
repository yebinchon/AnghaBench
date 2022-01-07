
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vte_txdesc {int tx_flags; } ;
struct TYPE_2__ {int vte_tx_cnt; int vte_tx_ring_map; int vte_tx_ring_tag; } ;
struct vte_softc {int vte_flags; int vte_watchdog_timer; TYPE_1__ vte_cdata; struct ifnet* vte_ifp; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_WRITE_2 (struct vte_softc*,int ,int ) ;
 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 int TX_POLL_START ;
 int VTE_FLAG_LINK ;
 int VTE_TXMBUF ;
 int VTE_TX_POLL ;
 int VTE_TX_RING_CNT ;
 int VTE_TX_TIMEOUT ;
 int bus_dmamap_sync (int ,int ,int) ;
 int m_freem (struct mbuf*) ;
 struct vte_txdesc* vte_encap (struct vte_softc*,struct mbuf**) ;

__attribute__((used)) static void
vte_start_locked(struct vte_softc *sc)
{
 struct ifnet *ifp;
 struct vte_txdesc *txd;
 struct mbuf *m_head;
 int enq;

 ifp = sc->vte_ifp;

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING || (sc->vte_flags & VTE_FLAG_LINK) == 0)
  return;

 for (enq = 0; !IFQ_DRV_IS_EMPTY(&ifp->if_snd); ) {

  if (sc->vte_cdata.vte_tx_cnt >= VTE_TX_RING_CNT - 1) {
   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
   break;
  }
  IFQ_DRV_DEQUEUE(&ifp->if_snd, m_head);
  if (m_head == ((void*)0))
   break;





  if ((txd = vte_encap(sc, &m_head)) == ((void*)0)) {
   if (m_head != ((void*)0))
    IFQ_DRV_PREPEND(&ifp->if_snd, m_head);
   break;
  }

  enq++;




  ETHER_BPF_MTAP(ifp, m_head);

  if ((txd->tx_flags & VTE_TXMBUF) != 0)
   m_freem(m_head);
 }

 if (enq > 0) {
  bus_dmamap_sync(sc->vte_cdata.vte_tx_ring_tag,
      sc->vte_cdata.vte_tx_ring_map, BUS_DMASYNC_PREREAD |
      BUS_DMASYNC_PREWRITE);
  CSR_WRITE_2(sc, VTE_TX_POLL, TX_POLL_START);
  sc->vte_watchdog_timer = VTE_TX_TIMEOUT;
 }
}
