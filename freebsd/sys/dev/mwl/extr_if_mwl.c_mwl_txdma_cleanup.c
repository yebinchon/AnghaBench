
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dd_desc_len; struct mwl_txbuf* dd_bufptr; } ;
struct mwl_txq {TYPE_1__ dma; scalar_t__ nfree; int free; } ;
struct mwl_txbuf {int * bf_dmamap; int * bf_node; int * bf_m; } ;
struct mwl_softc {int sc_dmat; } ;


 int KASSERT (int ,char*) ;
 int M_MWLDEV ;
 int STAILQ_INIT (int *) ;
 int bus_dmamap_destroy (int ,int *) ;
 int free (struct mwl_txbuf*,int ) ;
 int mwl_desc_cleanup (struct mwl_softc*,TYPE_1__*) ;
 int mwl_txbuf ;

__attribute__((used)) static void
mwl_txdma_cleanup(struct mwl_softc *sc, struct mwl_txq *txq)
{
 struct mwl_txbuf *bf;
 int i;

 bf = txq->dma.dd_bufptr;
 for (i = 0; i < mwl_txbuf; i++, bf++) {
  KASSERT(bf->bf_m == ((void*)0), ("mbuf on free list"));
  KASSERT(bf->bf_node == ((void*)0), ("node on free list"));
  if (bf->bf_dmamap != ((void*)0))
   bus_dmamap_destroy(sc->sc_dmat, bf->bf_dmamap);
 }
 STAILQ_INIT(&txq->free);
 txq->nfree = 0;
 if (txq->dma.dd_bufptr != ((void*)0)) {
  free(txq->dma.dd_bufptr, M_MWLDEV);
  txq->dma.dd_bufptr = ((void*)0);
 }
 if (txq->dma.dd_desc_len != 0)
  mwl_desc_cleanup(sc, &txq->dma);
}
