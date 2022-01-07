
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {struct atse_softc* if_softc; } ;
struct buf_ring {int dummy; } ;
struct atse_softc {int xchan_tx; int txcount; struct buf_ring* br; } ;


 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int XDMA_MEM_TO_DEV ;
 int drbr_advance (struct ifnet*,struct buf_ring*) ;
 struct mbuf* drbr_peek (struct ifnet*,struct buf_ring*) ;
 int drbr_putback (struct ifnet*,struct buf_ring*,struct mbuf*) ;
 int xdma_enqueue_mbuf (int ,struct mbuf**,int ,int,int,int ) ;
 int xdma_queue_submit (int ) ;

__attribute__((used)) static int
atse_transmit_locked(struct ifnet *ifp)
{
 struct atse_softc *sc;
 struct mbuf *m;
 struct buf_ring *br;
 int error;
 int enq;

 sc = ifp->if_softc;
 br = sc->br;

 enq = 0;

 while ((m = drbr_peek(ifp, br)) != ((void*)0)) {
  error = xdma_enqueue_mbuf(sc->xchan_tx, &m, 0, 4, 4, XDMA_MEM_TO_DEV);
  if (error != 0) {

   drbr_putback(ifp, br, m);
   break;
  }

  drbr_advance(ifp, br);

  sc->txcount++;
  enq++;


  ETHER_BPF_MTAP(ifp, m);
        }

 if (enq > 0)
  xdma_queue_submit(sc->xchan_tx);

 return (0);
}
