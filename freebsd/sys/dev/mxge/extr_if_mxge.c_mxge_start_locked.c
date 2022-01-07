
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mask; scalar_t__ req; scalar_t__ done; scalar_t__ max_desc; int stall; } ;
struct mxge_slice_state {TYPE_1__ tx; TYPE_2__* sc; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int if_snd; } ;
typedef TYPE_1__ mxge_tx_ring_t ;
struct TYPE_4__ {struct ifnet* ifp; } ;
typedef TYPE_2__ mxge_softc_t ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFF_DRV_OACTIVE ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int mxge_encap (struct mxge_slice_state*,struct mbuf*) ;

__attribute__((used)) static inline void
mxge_start_locked(struct mxge_slice_state *ss)
{
 mxge_softc_t *sc;
 struct mbuf *m;
 struct ifnet *ifp;
 mxge_tx_ring_t *tx;

 sc = ss->sc;
 ifp = sc->ifp;
 tx = &ss->tx;
 while ((tx->mask - (tx->req - tx->done)) > tx->max_desc) {
  IFQ_DRV_DEQUEUE(&ifp->if_snd, m);
  if (m == ((void*)0)) {
   return;
  }

  BPF_MTAP(ifp, m);


  mxge_encap(ss, m);
 }

 if ((sc->ifp->if_drv_flags & IFF_DRV_OACTIVE) == 0) {
  sc->ifp->if_drv_flags |= IFF_DRV_OACTIVE;
  tx->stall++;
 }
}
