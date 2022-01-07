
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ msk_tx_cnt; int msk_tx_prod; } ;
struct msk_if_softc {int msk_flags; int msk_watchdog_timer; TYPE_1__ msk_cdata; int msk_txq; int msk_softc; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; struct msk_if_softc* if_softc; } ;


 int CSR_WRITE_2 (int ,int ,int ) ;
 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 int MSK_FLAG_LINK ;
 int MSK_IF_LOCK_ASSERT (struct msk_if_softc*) ;
 scalar_t__ MSK_RESERVED_TX_DESC_CNT ;
 scalar_t__ MSK_TX_RING_CNT ;
 int MSK_TX_TIMEOUT ;
 int PREF_UNIT_PUT_IDX_REG ;
 int Y2_PREF_Q_ADDR (int ,int ) ;
 scalar_t__ msk_encap (struct msk_if_softc*,struct mbuf**) ;

__attribute__((used)) static void
msk_start_locked(struct ifnet *ifp)
{
 struct msk_if_softc *sc_if;
 struct mbuf *m_head;
 int enq;

 sc_if = ifp->if_softc;
 MSK_IF_LOCK_ASSERT(sc_if);

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING || (sc_if->msk_flags & MSK_FLAG_LINK) == 0)
  return;

 for (enq = 0; !IFQ_DRV_IS_EMPTY(&ifp->if_snd) &&
     sc_if->msk_cdata.msk_tx_cnt <
     (MSK_TX_RING_CNT - MSK_RESERVED_TX_DESC_CNT); ) {
  IFQ_DRV_DEQUEUE(&ifp->if_snd, m_head);
  if (m_head == ((void*)0))
   break;





  if (msk_encap(sc_if, &m_head) != 0) {
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

  CSR_WRITE_2(sc_if->msk_softc,
      Y2_PREF_Q_ADDR(sc_if->msk_txq, PREF_UNIT_PUT_IDX_REG),
      sc_if->msk_cdata.msk_tx_prod);


  sc_if->msk_watchdog_timer = MSK_TX_TIMEOUT;
 }
}
