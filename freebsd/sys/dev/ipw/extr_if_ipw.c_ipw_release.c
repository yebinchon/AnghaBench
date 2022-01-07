
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipw_softc {int * rxbuf_dmat; struct ipw_soft_buf* rx_sbuf_list; int * txbuf_dmat; TYPE_2__* tx_sbuf_list; int * hdr_dmat; TYPE_1__* shdr_list; int * cmd_dmat; int cmd_map; int * stbd_list; int * status_dmat; int status_map; int * status_list; int * rbd_dmat; int rbd_map; int * rbd_list; int * tbd_dmat; int tbd_map; int * tbd_list; int * parent_dmat; } ;
struct ipw_soft_buf {int map; int * m; } ;
struct TYPE_4__ {int map; } ;
struct TYPE_3__ {int map; } ;


 int BUS_DMASYNC_POSTREAD ;
 int IPW_NDATA ;
 int IPW_NRBD ;
 int IPW_NTBD ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int ) ;
 int bus_dmamap_sync (int *,int ,int ) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;
 int ipw_release_sbd (struct ipw_softc*,int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
ipw_release(struct ipw_softc *sc)
{
 struct ipw_soft_buf *sbuf;
 int i;

 if (sc->parent_dmat != ((void*)0)) {
  bus_dma_tag_destroy(sc->parent_dmat);
 }

 if (sc->tbd_dmat != ((void*)0)) {
  bus_dmamap_unload(sc->tbd_dmat, sc->tbd_map);
  bus_dmamem_free(sc->tbd_dmat, sc->tbd_list, sc->tbd_map);
  bus_dma_tag_destroy(sc->tbd_dmat);
 }

 if (sc->rbd_dmat != ((void*)0)) {
  if (sc->rbd_list != ((void*)0)) {
   bus_dmamap_unload(sc->rbd_dmat, sc->rbd_map);
   bus_dmamem_free(sc->rbd_dmat, sc->rbd_list,
       sc->rbd_map);
  }
  bus_dma_tag_destroy(sc->rbd_dmat);
 }

 if (sc->status_dmat != ((void*)0)) {
  if (sc->status_list != ((void*)0)) {
   bus_dmamap_unload(sc->status_dmat, sc->status_map);
   bus_dmamem_free(sc->status_dmat, sc->status_list,
       sc->status_map);
  }
  bus_dma_tag_destroy(sc->status_dmat);
 }

 for (i = 0; i < IPW_NTBD; i++)
  ipw_release_sbd(sc, &sc->stbd_list[i]);

 if (sc->cmd_dmat != ((void*)0)) {
  bus_dmamap_destroy(sc->cmd_dmat, sc->cmd_map);
  bus_dma_tag_destroy(sc->cmd_dmat);
 }

 if (sc->hdr_dmat != ((void*)0)) {
  for (i = 0; i < IPW_NDATA; i++)
   bus_dmamap_destroy(sc->hdr_dmat, sc->shdr_list[i].map);
  bus_dma_tag_destroy(sc->hdr_dmat);
 }

 if (sc->txbuf_dmat != ((void*)0)) {
  for (i = 0; i < IPW_NDATA; i++) {
   bus_dmamap_destroy(sc->txbuf_dmat,
       sc->tx_sbuf_list[i].map);
  }
  bus_dma_tag_destroy(sc->txbuf_dmat);
 }

 if (sc->rxbuf_dmat != ((void*)0)) {
  for (i = 0; i < IPW_NRBD; i++) {
   sbuf = &sc->rx_sbuf_list[i];
   if (sbuf->m != ((void*)0)) {
    bus_dmamap_sync(sc->rxbuf_dmat, sbuf->map,
        BUS_DMASYNC_POSTREAD);
    bus_dmamap_unload(sc->rxbuf_dmat, sbuf->map);
    m_freem(sbuf->m);
   }
   bus_dmamap_destroy(sc->rxbuf_dmat, sbuf->map);
  }
  bus_dma_tag_destroy(sc->rxbuf_dmat);
 }
}
