
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int csum_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; struct mbuf* m_next; } ;
struct glc_txsoft {int txs_ndescs; int txs_firstdesc; int txs_lastdesc; struct mbuf* txs_mbuf; int txs_dmamap; } ;
struct glc_softc {int bsy_txdma_slots; int first_used_txdma_slot; int next_txdma_slot; int sc_txdirtyq; int sc_txfreeq; TYPE_3__* sc_txdmadesc; int sc_txdma_tag; scalar_t__ sc_txdmadesc_phys; } ;
struct glc_dmadesc {int dummy; } ;
struct TYPE_6__ {int ds_len; int ds_addr; } ;
typedef TYPE_2__ bus_dma_segment_t ;
typedef scalar_t__ bus_addr_t ;
struct TYPE_7__ {scalar_t__ next; int cmd_stat; int len; int paddr; } ;


 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_NOWAIT ;
 int CSUM_TCP ;
 int CSUM_UDP ;
 int EIO ;
 int ENOBUFS ;
 int GELIC_CMDSTAT_CSUM_TCP ;
 int GELIC_CMDSTAT_CSUM_UDP ;
 int GELIC_CMDSTAT_LAST ;
 int GELIC_CMDSTAT_NOIPSEC ;
 int GELIC_DESCR_OWNED ;
 int GLC_MAX_TX_PACKETS ;
 int KASSERT (int,char*) ;
 int M_NOWAIT ;
 struct glc_txsoft* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct glc_txsoft*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int bus_dmamap_load_mbuf_sg (int ,int ,struct mbuf*,TYPE_2__*,int*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bzero (TYPE_3__*,int) ;
 struct mbuf* m_collapse (struct mbuf*,int ,int) ;
 int m_freem (struct mbuf*) ;
 int txs_q ;

__attribute__((used)) static int
glc_encap(struct glc_softc *sc, struct mbuf **m_head, bus_addr_t *pktdesc)
{
 bus_dma_segment_t segs[16];
 struct glc_txsoft *txs;
 struct mbuf *m;
 bus_addr_t firstslotphys;
 int i, idx, nsegs, nsegs_max;
 int err = 0;


 nsegs_max = 128 - sc->bsy_txdma_slots;

 if (nsegs_max > 16 || sc->first_used_txdma_slot < 0)
  nsegs_max = 16;


 if ((txs = STAILQ_FIRST(&sc->sc_txfreeq)) == ((void*)0)) {

  return (ENOBUFS);
 }

 nsegs = 0;
 for (m = *m_head; m != ((void*)0); m = m->m_next)
  nsegs++;

 if (nsegs > nsegs_max) {
  m = m_collapse(*m_head, M_NOWAIT, nsegs_max);
  if (m == ((void*)0)) {
   m_freem(*m_head);
   *m_head = ((void*)0);
   return (ENOBUFS);
  }
  *m_head = m;
 }

 err = bus_dmamap_load_mbuf_sg(sc->sc_txdma_tag, txs->txs_dmamap,
     *m_head, segs, &nsegs, BUS_DMA_NOWAIT);
 if (err != 0) {
  m_freem(*m_head);
  *m_head = ((void*)0);
  return (err);
 }

 KASSERT(nsegs <= 128 - sc->bsy_txdma_slots,
     ("GLC: Mapped too many (%d) DMA segments with %d available",
     nsegs, 128 - sc->bsy_txdma_slots));

 if (nsegs == 0) {
  m_freem(*m_head);
  *m_head = ((void*)0);
  return (EIO);
 }

 txs->txs_ndescs = nsegs;
 txs->txs_firstdesc = sc->next_txdma_slot;

 idx = txs->txs_firstdesc;
 firstslotphys = sc->sc_txdmadesc_phys +
     txs->txs_firstdesc*sizeof(struct glc_dmadesc);

 for (i = 0; i < nsegs; i++) {
  bzero(&sc->sc_txdmadesc[idx], sizeof(sc->sc_txdmadesc[idx]));
  sc->sc_txdmadesc[idx].paddr = segs[i].ds_addr;
  sc->sc_txdmadesc[idx].len = segs[i].ds_len;
  sc->sc_txdmadesc[idx].next = sc->sc_txdmadesc_phys +
      ((idx + 1) % GLC_MAX_TX_PACKETS)*sizeof(struct glc_dmadesc);
  sc->sc_txdmadesc[idx].cmd_stat |= GELIC_CMDSTAT_NOIPSEC;

  if (i+1 == nsegs) {
   txs->txs_lastdesc = idx;
   sc->sc_txdmadesc[idx].next = 0;
   sc->sc_txdmadesc[idx].cmd_stat |= GELIC_CMDSTAT_LAST;
  }

  if ((*m_head)->m_pkthdr.csum_flags & CSUM_TCP)
   sc->sc_txdmadesc[idx].cmd_stat |= GELIC_CMDSTAT_CSUM_TCP;
  if ((*m_head)->m_pkthdr.csum_flags & CSUM_UDP)
   sc->sc_txdmadesc[idx].cmd_stat |= GELIC_CMDSTAT_CSUM_UDP;
  sc->sc_txdmadesc[idx].cmd_stat |= GELIC_DESCR_OWNED;

  idx = (idx + 1) % GLC_MAX_TX_PACKETS;
 }
 sc->next_txdma_slot = idx;
 sc->bsy_txdma_slots += nsegs;
 if (txs->txs_firstdesc != 0)
  idx = txs->txs_firstdesc - 1;
 else
  idx = GLC_MAX_TX_PACKETS - 1;

 if (sc->first_used_txdma_slot < 0)
  sc->first_used_txdma_slot = txs->txs_firstdesc;

 bus_dmamap_sync(sc->sc_txdma_tag, txs->txs_dmamap,
     BUS_DMASYNC_PREWRITE);
 sc->sc_txdmadesc[idx].next = firstslotphys;

 STAILQ_REMOVE_HEAD(&sc->sc_txfreeq, txs_q);
 STAILQ_INSERT_TAIL(&sc->sc_txdirtyq, txs, txs_q);
 txs->txs_mbuf = *m_head;
 *pktdesc = firstslotphys;

 return (0);
}
