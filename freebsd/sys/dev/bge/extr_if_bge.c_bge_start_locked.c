
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mbuf {int dummy; } ;
struct bge_softc {int bge_txcnt; int bge_tx_prodidx; int bge_link; } ;
typedef int if_t ;


 int BGE_LOCK_ASSERT (struct bge_softc*) ;
 int BGE_TX_RING_CNT ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 scalar_t__ bge_encap (struct bge_softc*,struct mbuf**,int *) ;
 int bge_start_tx (struct bge_softc*,int ) ;
 int if_bpfmtap (int ,struct mbuf*) ;
 struct mbuf* if_dequeue (int ) ;
 int if_getdrvflags (int ) ;
 struct bge_softc* if_getsoftc (int ) ;
 int if_sendq_empty (int ) ;
 int if_sendq_prepend (int ,struct mbuf*) ;
 int if_setdrvflagbits (int ,int,int ) ;

__attribute__((used)) static void
bge_start_locked(if_t ifp)
{
 struct bge_softc *sc;
 struct mbuf *m_head;
 uint32_t prodidx;
 int count;

 sc = if_getsoftc(ifp);
 BGE_LOCK_ASSERT(sc);

 if (!sc->bge_link ||
     (if_getdrvflags(ifp) & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING)
  return;

 prodidx = sc->bge_tx_prodidx;

 for (count = 0; !if_sendq_empty(ifp);) {
  if (sc->bge_txcnt > BGE_TX_RING_CNT - 16) {
   if_setdrvflagbits(ifp, IFF_DRV_OACTIVE, 0);
   break;
  }
  m_head = if_dequeue(ifp);
  if (m_head == ((void*)0))
   break;






  if (bge_encap(sc, &m_head, &prodidx)) {
   if (m_head == ((void*)0))
    break;
   if_sendq_prepend(ifp, m_head);
   if_setdrvflagbits(ifp, IFF_DRV_OACTIVE, 0);
   break;
  }
  ++count;





  if_bpfmtap(ifp, m_head);
 }

 if (count > 0)
  bge_start_tx(sc, prodidx);
}
