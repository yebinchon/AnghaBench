
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int bus_size_t ;
struct TYPE_9__ {scalar_t__ paddr; int ptr; int map; int tag; } ;
struct TYPE_8__ {int dev; } ;
typedef TYPE_1__* POCE_SOFTC ;
typedef TYPE_2__* POCE_DMA_MEM ;
typedef int OCE_DMA_MEM ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int ENXIO ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,scalar_t__*,int) ;
 int bus_dmamem_alloc (int ,int *,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int oce_dma_free (TYPE_1__*,TYPE_2__*) ;
 int oce_dma_map_addr ;

int
oce_dma_alloc(POCE_SOFTC sc, bus_size_t size, POCE_DMA_MEM dma, int flags)
{
 int rc;


 memset(dma, 0, sizeof(OCE_DMA_MEM));

 rc = bus_dma_tag_create(bus_get_dma_tag(sc->dev),
    8, 0,
    BUS_SPACE_MAXADDR,
    BUS_SPACE_MAXADDR,
    ((void*)0), ((void*)0),
    size, 1, size, 0, ((void*)0), ((void*)0), &dma->tag);

 if (rc == 0) {
  rc = bus_dmamem_alloc(dma->tag,
          &dma->ptr,
          BUS_DMA_NOWAIT | BUS_DMA_COHERENT |
     BUS_DMA_ZERO,
          &dma->map);
 }

 dma->paddr = 0;
 if (rc == 0) {
  rc = bus_dmamap_load(dma->tag,
         dma->map,
         dma->ptr,
         size,
         oce_dma_map_addr,
         &dma->paddr, flags | BUS_DMA_NOWAIT);
  if (dma->paddr == 0)
   rc = ENXIO;
 }

 if (rc != 0)
  oce_dma_free(sc, dma);

 return rc;
}
