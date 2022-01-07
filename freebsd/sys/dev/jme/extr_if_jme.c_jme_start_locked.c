
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct TYPE_2__ {scalar_t__ jme_tx_cnt; } ;
struct jme_softc {int jme_flags; int jme_txcsr; int jme_watchdog_timer; TYPE_1__ jme_cdata; } ;
struct ifnet {int if_drv_flags; int if_snd; struct jme_softc* if_softc; } ;


 int CSR_WRITE_4 (struct jme_softc*,int ,int) ;
 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 int JME_FLAG_LINK ;
 int JME_LOCK_ASSERT (struct jme_softc*) ;
 int JME_TXCSR ;
 scalar_t__ JME_TX_DESC_HIWAT ;
 int JME_TX_TIMEOUT ;
 int TXCSR_TXQ0 ;
 int TXCSR_TXQ_N_START (int ) ;
 int TXCSR_TX_ENB ;
 scalar_t__ jme_encap (struct jme_softc*,struct mbuf**) ;
 int jme_txeof (struct jme_softc*) ;

__attribute__((used)) static void
jme_start_locked(struct ifnet *ifp)
{
        struct jme_softc *sc;
        struct mbuf *m_head;
 int enq;

 sc = ifp->if_softc;

 JME_LOCK_ASSERT(sc);

 if (sc->jme_cdata.jme_tx_cnt >= JME_TX_DESC_HIWAT)
  jme_txeof(sc);

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING || (sc->jme_flags & JME_FLAG_LINK) == 0)
  return;

 for (enq = 0; !IFQ_DRV_IS_EMPTY(&ifp->if_snd); ) {
  IFQ_DRV_DEQUEUE(&ifp->if_snd, m_head);
  if (m_head == ((void*)0))
   break;





  if (jme_encap(sc, &m_head)) {
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






  CSR_WRITE_4(sc, JME_TXCSR, sc->jme_txcsr | TXCSR_TX_ENB |
      TXCSR_TXQ_N_START(TXCSR_TXQ0));

  sc->jme_watchdog_timer = JME_TX_TIMEOUT;
 }
}
