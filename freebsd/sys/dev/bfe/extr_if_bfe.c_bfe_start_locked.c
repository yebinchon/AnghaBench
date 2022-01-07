
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; struct bfe_softc* if_softc; } ;
struct bfe_softc {int bfe_flags; int bfe_tx_cnt; int bfe_tx_prod; int bfe_watchdog_timer; int bfe_tx_map; int bfe_tx_tag; } ;
struct bfe_desc {int dummy; } ;


 int BFE_DMATX_PTR ;
 int BFE_FLAG_LINK ;
 int BFE_LOCK_ASSERT (struct bfe_softc*) ;
 int BFE_TX_LIST_CNT ;
 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_WRITE_4 (struct bfe_softc*,int ,int) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 scalar_t__ bfe_encap (struct bfe_softc*,struct mbuf**) ;
 int bus_dmamap_sync (int ,int ,int) ;

__attribute__((used)) static void
bfe_start_locked(struct ifnet *ifp)
{
 struct bfe_softc *sc;
 struct mbuf *m_head;
 int queued;

 sc = ifp->if_softc;

 BFE_LOCK_ASSERT(sc);





 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING || (sc->bfe_flags & BFE_FLAG_LINK) == 0)
  return;

 for (queued = 0; !IFQ_DRV_IS_EMPTY(&ifp->if_snd) &&
     sc->bfe_tx_cnt < BFE_TX_LIST_CNT - 1;) {
  IFQ_DRV_DEQUEUE(&ifp->if_snd, m_head);
  if (m_head == ((void*)0))
   break;





  if (bfe_encap(sc, &m_head)) {
   if (m_head == ((void*)0))
    break;
   IFQ_DRV_PREPEND(&ifp->if_snd, m_head);
   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
   break;
  }

  queued++;





  BPF_MTAP(ifp, m_head);
 }

 if (queued) {
  bus_dmamap_sync(sc->bfe_tx_tag, sc->bfe_tx_map,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

  CSR_WRITE_4(sc, BFE_DMATX_PTR,
      sc->bfe_tx_prod * sizeof(struct bfe_desc));
  CSR_WRITE_4(sc, BFE_DMATX_PTR,
      sc->bfe_tx_prod * sizeof(struct bfe_desc));




  sc->bfe_watchdog_timer = 5;
 }
}
