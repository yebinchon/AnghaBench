
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mge_softc {scalar_t__ tx_desc_used_count; int wd_timer; } ;
struct TYPE_2__ {int csum_flags; } ;
struct mbuf {int m_flags; int * m_next; TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int if_snd; struct mge_softc* if_softc; } ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int CSUM_IP ;
 int CSUM_TCP ;
 int CSUM_UDP ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IF_DEQUEUE (int *,struct mbuf*) ;
 int IF_PREPEND (int *,struct mbuf*) ;
 int MGE_ENABLE_TXQ ;
 int MGE_READ (struct mge_softc*,int ) ;
 int MGE_TRANSMIT_LOCK_ASSERT (struct mge_softc*) ;
 scalar_t__ MGE_TX_DESC_NUM ;
 int MGE_TX_QUEUE_CMD ;
 int MGE_WRITE (struct mge_softc*,int ,int) ;
 int M_NOWAIT ;
 int M_VLANTAG ;
 scalar_t__ M_WRITABLE (struct mbuf*) ;
 struct mbuf* m_defrag (struct mbuf*,int ) ;
 struct mbuf* m_dup (struct mbuf*,int ) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ mge_encap (struct mge_softc*,struct mbuf*) ;

__attribute__((used)) static void
mge_start_locked(struct ifnet *ifp)
{
 struct mge_softc *sc;
 struct mbuf *m0, *mtmp;
 uint32_t reg_val, queued = 0;

 sc = ifp->if_softc;

 MGE_TRANSMIT_LOCK_ASSERT(sc);

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING)
  return;

 for (;;) {

  IF_DEQUEUE(&ifp->if_snd, m0);
  if (m0 == ((void*)0))
   break;

  if (m0->m_pkthdr.csum_flags & (CSUM_IP|CSUM_TCP|CSUM_UDP) ||
      m0->m_flags & M_VLANTAG) {
   if (M_WRITABLE(m0) == 0) {
    mtmp = m_dup(m0, M_NOWAIT);
    m_freem(m0);
    if (mtmp == ((void*)0))
     continue;
    m0 = mtmp;
   }
  }

  if (m0->m_next != ((void*)0)) {
   mtmp = m_defrag(m0, M_NOWAIT);
   if (mtmp != ((void*)0))
    m0 = mtmp;
  }


  if (sc->tx_desc_used_count + 1 >= MGE_TX_DESC_NUM) {
   IF_PREPEND(&ifp->if_snd, m0);
   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
   break;
  }

  if (mge_encap(sc, m0) != 0)
   break;

  queued++;
  BPF_MTAP(ifp, m0);
 }

 if (queued) {

  reg_val = MGE_READ(sc, MGE_TX_QUEUE_CMD);
  MGE_WRITE(sc, MGE_TX_QUEUE_CMD, reg_val | MGE_ENABLE_TXQ);
  sc->wd_timer = 5;
 }
}
