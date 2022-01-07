
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct glxsb_dma_map {int dma_nsegs; int dma_size; int dma_map; int dma_vaddr; int dma_paddr; } ;
struct glxsb_softc {int sc_dmat; int sc_dev; struct glxsb_dma_map sc_dma; } ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int GLXSB_MAX_AES_LEN ;
 int SB_AES_ALIGN ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,int *,int ) ;
 int bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*,int,...) ;
 int glxsb_dmamap_cb ;

__attribute__((used)) static int
glxsb_dma_alloc(struct glxsb_softc *sc)
{
 struct glxsb_dma_map *dma = &sc->sc_dma;
 int rc;

 dma->dma_nsegs = 1;
 dma->dma_size = GLXSB_MAX_AES_LEN * 2;


 rc = bus_dma_tag_create(bus_get_dma_tag(sc->sc_dev),
    SB_AES_ALIGN, 0,
    BUS_SPACE_MAXADDR_32BIT,
    BUS_SPACE_MAXADDR,
    ((void*)0), ((void*)0),
    dma->dma_size,
    dma->dma_nsegs,
    dma->dma_size,
    BUS_DMA_ALLOCNOW,
    ((void*)0), ((void*)0),
    &sc->sc_dmat);
 if (rc != 0) {
  device_printf(sc->sc_dev,
      "cannot allocate DMA tag (%d)\n", rc);
  return (rc);
 }

 rc = bus_dmamem_alloc(sc->sc_dmat, (void **)&dma->dma_vaddr,
     BUS_DMA_NOWAIT, &dma->dma_map);
 if (rc != 0) {
  device_printf(sc->sc_dev,
      "cannot allocate DMA memory of %d bytes (%d)\n",
   dma->dma_size, rc);
  goto fail0;
 }

 rc = bus_dmamap_load(sc->sc_dmat, dma->dma_map, dma->dma_vaddr,
     dma->dma_size, glxsb_dmamap_cb, &dma->dma_paddr, BUS_DMA_NOWAIT);
 if (rc != 0) {
  device_printf(sc->sc_dev,
      "cannot load DMA memory for %d bytes (%d)\n",
     dma->dma_size, rc);
  goto fail1;
 }

 return (0);

fail1:
 bus_dmamem_free(sc->sc_dmat, dma->dma_vaddr, dma->dma_map);
fail0:
 bus_dma_tag_destroy(sc->sc_dmat);
 return (rc);
}
