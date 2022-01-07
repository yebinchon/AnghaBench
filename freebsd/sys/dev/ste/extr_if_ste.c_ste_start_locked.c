
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ste_tx_cnt; size_t ste_tx_prod; struct ste_chain* ste_last_tx; int ste_tx_list_map; int ste_tx_list_tag; struct ste_chain* ste_tx_chain; } ;
struct TYPE_4__ {int ste_tx_list_paddr; } ;
struct ste_softc {int ste_flags; int ste_timer; TYPE_3__ ste_cdata; TYPE_1__ ste_ldata; } ;
struct ste_chain {int ste_phys; TYPE_2__* ste_ptr; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; struct ste_softc* if_softc; } ;
struct TYPE_5__ {int ste_next; } ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_WRITE_1 (struct ste_softc*,int ,int) ;
 int CSR_WRITE_4 (struct ste_softc*,int ,int ) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 int STE_ADDR_LO (int ) ;
 int STE_DMACTL ;
 int STE_DMACTL_TXDMA_STALL ;
 int STE_DMACTL_TXDMA_UNSTALL ;
 int STE_FLAG_LINK ;
 int STE_LOCK_ASSERT (struct ste_softc*) ;
 int STE_SETBIT4 (struct ste_softc*,int ,int ) ;
 int STE_TX_DMALIST_PTR ;
 int STE_TX_DMAPOLL_PERIOD ;
 int STE_TX_LIST_CNT ;
 int STE_TX_TIMEOUT ;
 int bus_dmamap_sync (int ,int ,int) ;
 scalar_t__ ste_encap (struct ste_softc*,struct mbuf**,struct ste_chain*) ;
 int ste_wait (struct ste_softc*) ;

__attribute__((used)) static void
ste_start_locked(struct ifnet *ifp)
{
 struct ste_softc *sc;
 struct ste_chain *cur_tx;
 struct mbuf *m_head = ((void*)0);
 int enq;

 sc = ifp->if_softc;
 STE_LOCK_ASSERT(sc);

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING || (sc->ste_flags & STE_FLAG_LINK) == 0)
  return;

 for (enq = 0; !IFQ_DRV_IS_EMPTY(&ifp->if_snd);) {
  if (sc->ste_cdata.ste_tx_cnt == STE_TX_LIST_CNT - 1) {





   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
   break;
  }
  IFQ_DRV_DEQUEUE(&ifp->if_snd, m_head);
  if (m_head == ((void*)0))
   break;
  cur_tx = &sc->ste_cdata.ste_tx_chain[sc->ste_cdata.ste_tx_prod];
  if (ste_encap(sc, &m_head, cur_tx) != 0) {
   if (m_head == ((void*)0))
    break;
   IFQ_DRV_PREPEND(&ifp->if_snd, m_head);
   break;
  }
  if (sc->ste_cdata.ste_last_tx == ((void*)0)) {
   bus_dmamap_sync(sc->ste_cdata.ste_tx_list_tag,
       sc->ste_cdata.ste_tx_list_map,
       BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
   STE_SETBIT4(sc, STE_DMACTL, STE_DMACTL_TXDMA_STALL);
   ste_wait(sc);
   CSR_WRITE_4(sc, STE_TX_DMALIST_PTR,
           STE_ADDR_LO(sc->ste_ldata.ste_tx_list_paddr));
   CSR_WRITE_1(sc, STE_TX_DMAPOLL_PERIOD, 64);
   STE_SETBIT4(sc, STE_DMACTL, STE_DMACTL_TXDMA_UNSTALL);
   ste_wait(sc);
  } else {
   sc->ste_cdata.ste_last_tx->ste_ptr->ste_next =
       sc->ste_cdata.ste_last_tx->ste_phys;
   bus_dmamap_sync(sc->ste_cdata.ste_tx_list_tag,
       sc->ste_cdata.ste_tx_list_map,
       BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
  }
  sc->ste_cdata.ste_last_tx = cur_tx;

  enq++;




  BPF_MTAP(ifp, m_head);
 }

 if (enq > 0)
  sc->ste_timer = STE_TX_TIMEOUT;
}
