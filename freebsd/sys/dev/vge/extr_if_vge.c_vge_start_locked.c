
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vge_txdesc {TYPE_2__* tx_desc; } ;
struct TYPE_6__ {int vge_tx_prodidx; int vge_tx_cnt; int vge_tx_ring_map; int vge_tx_ring_tag; struct vge_txdesc* vge_txdesc; } ;
struct vge_softc {int vge_flags; int vge_timer; TYPE_3__ vge_cdata; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; struct vge_softc* if_softc; } ;
struct TYPE_5__ {TYPE_1__* vge_frag; } ;
struct TYPE_4__ {int vge_addrhi; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_WRITE_2 (struct vge_softc*,int ,int ) ;
 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 int VGE_FLAG_LINK ;
 int VGE_LOCK_ASSERT (struct vge_softc*) ;
 int VGE_TXDESC_Q ;
 int VGE_TXQCSRS ;
 int VGE_TXQCSR_WAK0 ;
 int VGE_TX_DESC_CNT ;
 int VGE_TX_DESC_DEC (int) ;
 int VGE_TX_DESC_INC (int) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int htole32 (int ) ;
 scalar_t__ vge_encap (struct vge_softc*,struct mbuf**) ;

__attribute__((used)) static void
vge_start_locked(struct ifnet *ifp)
{
 struct vge_softc *sc;
 struct vge_txdesc *txd;
 struct mbuf *m_head;
 int enq, idx;

 sc = ifp->if_softc;

 VGE_LOCK_ASSERT(sc);

 if ((sc->vge_flags & VGE_FLAG_LINK) == 0 ||
     (ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING)
  return;

 idx = sc->vge_cdata.vge_tx_prodidx;
 VGE_TX_DESC_DEC(idx);
 for (enq = 0; !IFQ_DRV_IS_EMPTY(&ifp->if_snd) &&
     sc->vge_cdata.vge_tx_cnt < VGE_TX_DESC_CNT - 1; ) {
  IFQ_DRV_DEQUEUE(&ifp->if_snd, m_head);
  if (m_head == ((void*)0))
   break;





  if (vge_encap(sc, &m_head)) {
   if (m_head == ((void*)0))
    break;
   IFQ_DRV_PREPEND(&ifp->if_snd, m_head);
   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
   break;
  }

  txd = &sc->vge_cdata.vge_txdesc[idx];
  txd->tx_desc->vge_frag[0].vge_addrhi |= htole32(VGE_TXDESC_Q);
  VGE_TX_DESC_INC(idx);

  enq++;




  ETHER_BPF_MTAP(ifp, m_head);
 }

 if (enq > 0) {
  bus_dmamap_sync(sc->vge_cdata.vge_tx_ring_tag,
      sc->vge_cdata.vge_tx_ring_map,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

  CSR_WRITE_2(sc, VGE_TXQCSRS, VGE_TXQCSR_WAK0);



  sc->vge_timer = 5;
 }
}
