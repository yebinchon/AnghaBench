
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txdesc {scalar_t__ tx_ndesc; int * tx_m; int tx_dmamap; } ;
struct sge_chain_data {int sge_txmbuf_tag; struct sge_txdesc* sge_txdesc; } ;
struct sge_softc {struct sge_chain_data sge_cdata; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int SGE_LOCK_ASSERT (struct sge_softc*) ;
 int SGE_TX_RING_CNT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static int
sge_list_tx_free(struct sge_softc *sc)
{
 struct sge_chain_data *cd;
 struct sge_txdesc *txd;
 int i;

 SGE_LOCK_ASSERT(sc);
 cd = &sc->sge_cdata;
 for (i = 0; i < SGE_TX_RING_CNT; i++) {
  txd = &cd->sge_txdesc[i];
  if (txd->tx_m != ((void*)0)) {
   bus_dmamap_sync(cd->sge_txmbuf_tag, txd->tx_dmamap,
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(cd->sge_txmbuf_tag, txd->tx_dmamap);
   m_freem(txd->tx_m);
   txd->tx_m = ((void*)0);
   txd->tx_ndesc = 0;
  }
 }

 return (0);
}
