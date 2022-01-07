
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_next; } ;
struct llan_softc {int tx_dma_map; int tx_dma_tag; int io_lock; } ;
struct ifnet {int if_drv_flags; int if_snd; struct llan_softc* if_softc; } ;
typedef scalar_t__ bus_addr_t ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int MA_OWNED ;
 int M_NOWAIT ;
 int bus_dmamap_load_mbuf (int ,int ,struct mbuf*,int ,struct llan_softc*,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int llan_send_packet ;
 struct mbuf* m_collapse (struct mbuf*,int ,int) ;
 int m_freem (struct mbuf*) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
llan_start_locked(struct ifnet *ifp)
{
 struct llan_softc *sc = ifp->if_softc;
 bus_addr_t first;
 int nsegs;
 struct mbuf *mb_head, *m;

 mtx_assert(&sc->io_lock, MA_OWNED);
 first = 0;

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING)
  return;

 while (!IFQ_DRV_IS_EMPTY(&ifp->if_snd)) {
  IFQ_DRV_DEQUEUE(&ifp->if_snd, mb_head);

  if (mb_head == ((void*)0))
   break;

  BPF_MTAP(ifp, mb_head);

  for (m = mb_head, nsegs = 0; m != ((void*)0); m = m->m_next)
   nsegs++;
  if (nsegs > 6) {
   m = m_collapse(mb_head, M_NOWAIT, 6);
   if (m == ((void*)0)) {
    m_freem(mb_head);
    continue;
   }
  }

  bus_dmamap_load_mbuf(sc->tx_dma_tag, sc->tx_dma_map,
   mb_head, llan_send_packet, sc, 0);
  bus_dmamap_unload(sc->tx_dma_tag, sc->tx_dma_map);
  m_freem(mb_head);
 }
}
