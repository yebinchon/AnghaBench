
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_8__ {scalar_t__ pkt_done; int done; int mask; int req; int* send_stop; int mtx; int deactivate; scalar_t__ queue_active; int wake; TYPE_2__* info; int dmat; } ;
struct mxge_slice_state {int if_drv_flags; TYPE_4__ tx; TYPE_3__* sc; int opackets; int omcasts; int obytes; } ;
struct TYPE_5__ {scalar_t__ len; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; } ;
typedef TYPE_4__ mxge_tx_ring_t ;
typedef int bus_dmamap_t ;
struct TYPE_7__ {int num_slices; struct ifnet* ifp; } ;
struct TYPE_6__ {scalar_t__ flag; int map; struct mbuf* m; } ;


 int IFF_DRV_OACTIVE ;
 int M_MCAST ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem (struct mbuf*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int mxge_start_locked (struct mxge_slice_state*) ;
 int wmb () ;

__attribute__((used)) static inline void
mxge_tx_done(struct mxge_slice_state *ss, uint32_t mcp_idx)
{
 struct ifnet *ifp;
 mxge_tx_ring_t *tx;
 struct mbuf *m;
 bus_dmamap_t map;
 int idx;
 int *flags;

 tx = &ss->tx;
 ifp = ss->sc->ifp;
 while (tx->pkt_done != mcp_idx) {
  idx = tx->done & tx->mask;
  tx->done++;
  m = tx->info[idx].m;


  if (m != ((void*)0)) {
   ss->obytes += m->m_pkthdr.len;
   if (m->m_flags & M_MCAST)
    ss->omcasts++;
   ss->opackets++;
   tx->info[idx].m = ((void*)0);
   map = tx->info[idx].map;
   bus_dmamap_unload(tx->dmat, map);
   m_freem(m);
  }
  if (tx->info[idx].flag) {
   tx->info[idx].flag = 0;
   tx->pkt_done++;
  }
 }






 flags = &ifp->if_drv_flags;

 mtx_lock(&ss->tx.mtx);
 if ((*flags) & IFF_DRV_OACTIVE &&
     tx->req - tx->done < (tx->mask + 1)/4) {
  *(flags) &= ~IFF_DRV_OACTIVE;
  ss->tx.wake++;
  mxge_start_locked(ss);
 }
 mtx_unlock(&ss->tx.mtx);

}
