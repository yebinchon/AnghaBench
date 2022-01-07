
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct mge_softc {int mge_desc_dtag; } ;
struct mge_desc_wrapper {scalar_t__ desc_dmap; int mge_desc; int buffer; scalar_t__ buffer_dmap; } ;
typedef int bus_dma_tag_t ;


 int BUS_DMASYNC_POSTREAD ;
 int bus_dmamap_destroy (int ,scalar_t__) ;
 int bus_dmamap_sync (int ,scalar_t__,int ) ;
 int bus_dmamap_unload (int ,scalar_t__) ;
 int bus_dmamem_free (int ,int ,scalar_t__) ;
 int m_freem (int ) ;

__attribute__((used)) static void
mge_free_desc(struct mge_softc *sc, struct mge_desc_wrapper* tab,
    uint32_t size, bus_dma_tag_t buffer_tag, uint8_t free_mbufs)
{
 struct mge_desc_wrapper *dw;
 int i;

 for (i = 0; i < size; i++) {

  dw = &(tab[i]);

  if (dw->buffer_dmap) {
   if (free_mbufs) {
    bus_dmamap_sync(buffer_tag, dw->buffer_dmap,
        BUS_DMASYNC_POSTREAD);
    bus_dmamap_unload(buffer_tag, dw->buffer_dmap);
   }
   bus_dmamap_destroy(buffer_tag, dw->buffer_dmap);
   if (free_mbufs)
    m_freem(dw->buffer);
  }

  if (dw->desc_dmap) {
   bus_dmamap_sync(sc->mge_desc_dtag, dw->desc_dmap,
       BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(sc->mge_desc_dtag, dw->desc_dmap);
   bus_dmamem_free(sc->mge_desc_dtag, dw->mge_desc,
       dw->desc_dmap);
  }
 }
}
