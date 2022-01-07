
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ti_tx_ring_map; int ti_tx_ring_tag; } ;
struct TYPE_3__ {int * ti_tx_ring; } ;
struct ti_softc {int ti_txcnt; int ti_timer; int ti_tx_saved_prodidx; TYPE_2__ ti_cdata; TYPE_1__ ti_rdata; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; struct ti_softc* if_softc; } ;


 int BUS_DMASYNC_PREWRITE ;
 int CSR_WRITE_4 (struct ti_softc*,int ,int ) ;
 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFF_DRV_OACTIVE ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 int TI_MB_SENDPROD_IDX ;
 int TI_TX_RING_CNT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 scalar_t__ ti_encap (struct ti_softc*,struct mbuf**) ;

__attribute__((used)) static void
ti_start_locked(struct ifnet *ifp)
{
 struct ti_softc *sc;
 struct mbuf *m_head = ((void*)0);
 int enq = 0;

 sc = ifp->if_softc;

 for (; !IFQ_DRV_IS_EMPTY(&ifp->if_snd) &&
     sc->ti_txcnt < (TI_TX_RING_CNT - 16);) {
  IFQ_DRV_DEQUEUE(&ifp->if_snd, m_head);
  if (m_head == ((void*)0))
   break;






  if (ti_encap(sc, &m_head)) {
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
  if (sc->ti_rdata.ti_tx_ring != ((void*)0))
   bus_dmamap_sync(sc->ti_cdata.ti_tx_ring_tag,
       sc->ti_cdata.ti_tx_ring_map, BUS_DMASYNC_PREWRITE);

  CSR_WRITE_4(sc, TI_MB_SENDPROD_IDX, sc->ti_tx_saved_prodidx);




  sc->ti_timer = 5;
 }
}
