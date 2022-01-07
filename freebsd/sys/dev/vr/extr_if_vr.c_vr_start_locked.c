
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vr_tx_cnt; } ;
struct vr_softc {int vr_flags; int vr_watchdog_timer; TYPE_1__ vr_cdata; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; struct vr_softc* if_softc; } ;


 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 int VR_CR0 ;
 int VR_CR0_TX_GO ;
 int VR_F_LINK ;
 int VR_LOCK_ASSERT (struct vr_softc*) ;
 int VR_SETBIT (struct vr_softc*,int ,int ) ;
 int VR_TX_RING_CNT ;
 scalar_t__ vr_encap (struct vr_softc*,struct mbuf**) ;

__attribute__((used)) static void
vr_start_locked(struct ifnet *ifp)
{
 struct vr_softc *sc;
 struct mbuf *m_head;
 int enq;

 sc = ifp->if_softc;

 VR_LOCK_ASSERT(sc);

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING || (sc->vr_flags & VR_F_LINK) == 0)
  return;

 for (enq = 0; !IFQ_DRV_IS_EMPTY(&ifp->if_snd) &&
     sc->vr_cdata.vr_tx_cnt < VR_TX_RING_CNT - 2; ) {
  IFQ_DRV_DEQUEUE(&ifp->if_snd, m_head);
  if (m_head == ((void*)0))
   break;





  if (vr_encap(sc, &m_head)) {
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

  VR_SETBIT(sc, VR_CR0, VR_CR0_TX_GO);

  sc->vr_watchdog_timer = 5;
 }
}
