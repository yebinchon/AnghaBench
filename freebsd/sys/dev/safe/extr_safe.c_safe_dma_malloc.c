
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int u_int32_t ;
struct safe_softc {int sc_dev; } ;
struct safe_dma_alloc {int * dma_tag; int dma_map; int dma_vaddr; scalar_t__ dma_size; int dma_paddr; } ;
typedef scalar_t__ bus_size_t ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,scalar_t__,int,scalar_t__,int ,int *,int *,int **) ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_load (int *,int ,int ,scalar_t__,int ,int *,int) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_alloc (int *,void**,int,int *) ;
 int bus_dmamem_free (int *,int ,int ) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*,int,...) ;
 int safe_dmamap_cb ;

__attribute__((used)) static int
safe_dma_malloc(
 struct safe_softc *sc,
 bus_size_t size,
 struct safe_dma_alloc *dma,
 int mapflags
)
{
 int r;

 r = bus_dma_tag_create(bus_get_dma_tag(sc->sc_dev),
          sizeof(u_int32_t), 0,
          BUS_SPACE_MAXADDR_32BIT,
          BUS_SPACE_MAXADDR,
          ((void*)0), ((void*)0),
          size,
          1,
          size,
          BUS_DMA_ALLOCNOW,
          ((void*)0), ((void*)0),
          &dma->dma_tag);
 if (r != 0) {
  device_printf(sc->sc_dev, "safe_dma_malloc: "
   "bus_dma_tag_create failed; error %u\n", r);
  goto fail_0;
 }

 r = bus_dmamem_alloc(dma->dma_tag, (void**) &dma->dma_vaddr,
        BUS_DMA_NOWAIT, &dma->dma_map);
 if (r != 0) {
  device_printf(sc->sc_dev, "safe_dma_malloc: "
   "bus_dmammem_alloc failed; size %ju, error %u\n",
   (uintmax_t)size, r);
  goto fail_1;
 }

 r = bus_dmamap_load(dma->dma_tag, dma->dma_map, dma->dma_vaddr,
              size,
       safe_dmamap_cb,
       &dma->dma_paddr,
       mapflags | BUS_DMA_NOWAIT);
 if (r != 0) {
  device_printf(sc->sc_dev, "safe_dma_malloc: "
   "bus_dmamap_load failed; error %u\n", r);
  goto fail_2;
 }

 dma->dma_size = size;
 return (0);

 bus_dmamap_unload(dma->dma_tag, dma->dma_map);
fail_2:
 bus_dmamem_free(dma->dma_tag, dma->dma_vaddr, dma->dma_map);
fail_1:
 bus_dma_tag_destroy(dma->dma_tag);
fail_0:
 dma->dma_tag = ((void*)0);
 return (r);
}
