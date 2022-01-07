
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_softc {int sis_flags; int sis_tx_cnt; int sis_watchdog_timer; int sis_tx_list_map; int sis_tx_list_tag; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; struct sis_softc* if_softc; } ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 int SIS_CSR ;
 int SIS_CSR_TX_ENABLE ;
 int SIS_FLAG_LINK ;
 int SIS_LOCK_ASSERT (struct sis_softc*) ;
 int SIS_SETBIT (struct sis_softc*,int ,int ) ;
 int SIS_TX_LIST_CNT ;
 int bus_dmamap_sync (int ,int ,int) ;
 scalar_t__ sis_encap (struct sis_softc*,struct mbuf**) ;

__attribute__((used)) static void
sis_startl(struct ifnet *ifp)
{
 struct sis_softc *sc;
 struct mbuf *m_head;
 int queued;

 sc = ifp->if_softc;

 SIS_LOCK_ASSERT(sc);

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING || (sc->sis_flags & SIS_FLAG_LINK) == 0)
  return;

 for (queued = 0; !IFQ_DRV_IS_EMPTY(&ifp->if_snd) &&
     sc->sis_tx_cnt < SIS_TX_LIST_CNT - 4;) {
  IFQ_DRV_DEQUEUE(&ifp->if_snd, m_head);
  if (m_head == ((void*)0))
   break;

  if (sis_encap(sc, &m_head) != 0) {
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

  bus_dmamap_sync(sc->sis_tx_list_tag, sc->sis_tx_list_map,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
  SIS_SETBIT(sc, SIS_CSR, SIS_CSR_TX_ENABLE);




  sc->sis_watchdog_timer = 5;
 }
}
