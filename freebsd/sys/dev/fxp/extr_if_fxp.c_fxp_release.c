
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fxp_tx {int tx_map; int * tx_mbuf; } ;
struct TYPE_2__ {struct fxp_tx* tx_list; struct fxp_rx* rx_list; scalar_t__ cbl_list; } ;
struct fxp_softc {int sc_mtx; scalar_t__ ifp; scalar_t__ mcs_tag; scalar_t__ cbl_tag; scalar_t__ fxp_stag; scalar_t__ fxp_txmtag; TYPE_1__ fxp_desc; scalar_t__ fxp_rxmtag; int spare_map; int fxp_res; int fxp_spec; int dev; int mcs_map; scalar_t__ mcsp; int fxp_smap; scalar_t__ fxp_stats; int cbl_map; int sc_media; scalar_t__ miibus; int * ih; } ;
struct fxp_rx {int rx_map; int * rx_mbuf; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int FXP_LOCK_ASSERT (struct fxp_softc*,int ) ;
 int FXP_NRFABUFS ;
 int FXP_NTXCB ;
 int KASSERT (int ,char*) ;
 int MA_NOTOWNED ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_dmamap_destroy (scalar_t__,int ) ;
 int bus_dmamap_sync (scalar_t__,int ,int ) ;
 int bus_dmamap_unload (scalar_t__,int ) ;
 int bus_dmamem_free (scalar_t__,scalar_t__,int ) ;
 int bus_generic_detach (int ) ;
 int bus_release_resources (int ,int ,int ) ;
 int device_delete_child (int ,scalar_t__) ;
 int if_free (scalar_t__) ;
 int ifmedia_removeall (int *) ;
 int m_freem (int *) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
fxp_release(struct fxp_softc *sc)
{
 struct fxp_rx *rxp;
 struct fxp_tx *txp;
 int i;

 FXP_LOCK_ASSERT(sc, MA_NOTOWNED);
 KASSERT(sc->ih == ((void*)0),
     ("fxp_release() called with intr handle still active"));
 if (sc->miibus)
  device_delete_child(sc->dev, sc->miibus);
 bus_generic_detach(sc->dev);
 ifmedia_removeall(&sc->sc_media);
 if (sc->fxp_desc.cbl_list) {
  bus_dmamap_unload(sc->cbl_tag, sc->cbl_map);
  bus_dmamem_free(sc->cbl_tag, sc->fxp_desc.cbl_list,
      sc->cbl_map);
 }
 if (sc->fxp_stats) {
  bus_dmamap_unload(sc->fxp_stag, sc->fxp_smap);
  bus_dmamem_free(sc->fxp_stag, sc->fxp_stats, sc->fxp_smap);
 }
 if (sc->mcsp) {
  bus_dmamap_unload(sc->mcs_tag, sc->mcs_map);
  bus_dmamem_free(sc->mcs_tag, sc->mcsp, sc->mcs_map);
 }
 bus_release_resources(sc->dev, sc->fxp_spec, sc->fxp_res);
 if (sc->fxp_rxmtag) {
  for (i = 0; i < FXP_NRFABUFS; i++) {
   rxp = &sc->fxp_desc.rx_list[i];
   if (rxp->rx_mbuf != ((void*)0)) {
    bus_dmamap_sync(sc->fxp_rxmtag, rxp->rx_map,
        BUS_DMASYNC_POSTREAD);
    bus_dmamap_unload(sc->fxp_rxmtag, rxp->rx_map);
    m_freem(rxp->rx_mbuf);
   }
   bus_dmamap_destroy(sc->fxp_rxmtag, rxp->rx_map);
  }
  bus_dmamap_destroy(sc->fxp_rxmtag, sc->spare_map);
  bus_dma_tag_destroy(sc->fxp_rxmtag);
 }
 if (sc->fxp_txmtag) {
  for (i = 0; i < FXP_NTXCB; i++) {
   txp = &sc->fxp_desc.tx_list[i];
   if (txp->tx_mbuf != ((void*)0)) {
    bus_dmamap_sync(sc->fxp_txmtag, txp->tx_map,
        BUS_DMASYNC_POSTWRITE);
    bus_dmamap_unload(sc->fxp_txmtag, txp->tx_map);
    m_freem(txp->tx_mbuf);
   }
   bus_dmamap_destroy(sc->fxp_txmtag, txp->tx_map);
  }
  bus_dma_tag_destroy(sc->fxp_txmtag);
 }
 if (sc->fxp_stag)
  bus_dma_tag_destroy(sc->fxp_stag);
 if (sc->cbl_tag)
  bus_dma_tag_destroy(sc->cbl_tag);
 if (sc->mcs_tag)
  bus_dma_tag_destroy(sc->mcs_tag);
 if (sc->ifp)
  if_free(sc->ifp);

 mtx_destroy(&sc->sc_mtx);
}
