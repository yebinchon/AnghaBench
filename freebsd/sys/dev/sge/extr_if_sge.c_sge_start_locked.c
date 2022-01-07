
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sge_tx_cnt; int sge_tx_dmamap; int sge_tx_tag; } ;
struct sge_softc {int sge_flags; int sge_timer; TYPE_1__ sge_cdata; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; struct sge_softc* if_softc; } ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_WRITE_4 (struct sge_softc*,int ,int) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 int SGE_FLAG_LINK ;
 int SGE_LOCK_ASSERT (struct sge_softc*) ;
 scalar_t__ SGE_MAXTXSEGS ;
 scalar_t__ SGE_TX_RING_CNT ;
 int TX_CTL ;
 int TX_CTL_ENB ;
 int TX_CTL_POLL ;
 int bus_dmamap_sync (int ,int ,int) ;
 scalar_t__ sge_encap (struct sge_softc*,struct mbuf**) ;

__attribute__((used)) static void
sge_start_locked(struct ifnet *ifp)
{
 struct sge_softc *sc;
 struct mbuf *m_head;
 int queued = 0;

 sc = ifp->if_softc;
 SGE_LOCK_ASSERT(sc);

 if ((sc->sge_flags & SGE_FLAG_LINK) == 0 ||
     (ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING)
  return;

 for (queued = 0; !IFQ_DRV_IS_EMPTY(&ifp->if_snd); ) {
  if (sc->sge_cdata.sge_tx_cnt > (SGE_TX_RING_CNT -
      SGE_MAXTXSEGS)) {
   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
   break;
  }
  IFQ_DRV_DEQUEUE(&ifp->if_snd, m_head);
  if (m_head == ((void*)0))
   break;
  if (sge_encap(sc, &m_head)) {
   if (m_head == ((void*)0))
    break;
   IFQ_DRV_PREPEND(&ifp->if_snd, m_head);
   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
   break;
  }
  queued++;




  BPF_MTAP(ifp, m_head);
 }

 if (queued > 0) {
  bus_dmamap_sync(sc->sge_cdata.sge_tx_tag,
      sc->sge_cdata.sge_tx_dmamap,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
  CSR_WRITE_4(sc, TX_CTL, 0x1a00 | TX_CTL_ENB | TX_CTL_POLL);
  sc->sge_timer = 5;
 }
}
