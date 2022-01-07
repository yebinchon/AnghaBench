
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; struct dc_softc* if_softc; } ;
struct TYPE_2__ {scalar_t__ dc_tx_cnt; int dc_tx_prod; int dc_tx_first; } ;
struct dc_softc {scalar_t__ dc_link; int dc_flags; int dc_wdog_timer; TYPE_1__ dc_cdata; } ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int CSR_WRITE_4 (struct dc_softc*,int ,int) ;
 int DC_LOCK_ASSERT (struct dc_softc*) ;
 int DC_TXSTART ;
 scalar_t__ DC_TX_LIST_CNT ;
 scalar_t__ DC_TX_LIST_RSVD ;
 int DC_TX_POLL ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 scalar_t__ dc_encap (struct dc_softc*,struct mbuf**) ;

__attribute__((used)) static void
dc_start_locked(struct ifnet *ifp)
{
 struct dc_softc *sc;
 struct mbuf *m_head;
 int queued;

 sc = ifp->if_softc;

 DC_LOCK_ASSERT(sc);

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING || sc->dc_link == 0)
  return;

 sc->dc_cdata.dc_tx_first = sc->dc_cdata.dc_tx_prod;

 for (queued = 0; !IFQ_DRV_IS_EMPTY(&ifp->if_snd); ) {



  if (sc->dc_cdata.dc_tx_cnt > DC_TX_LIST_CNT - DC_TX_LIST_RSVD) {
   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
   break;
  }
  IFQ_DRV_DEQUEUE(&ifp->if_snd, m_head);
  if (m_head == ((void*)0))
   break;

  if (dc_encap(sc, &m_head)) {
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

  if (!(sc->dc_flags & DC_TX_POLL))
   CSR_WRITE_4(sc, DC_TXSTART, 0xFFFFFFFF);




  sc->dc_wdog_timer = 5;
 }
}
