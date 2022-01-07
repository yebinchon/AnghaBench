
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nfe_rx_data* data; } ;
struct nfe_softc {int nfe_flags; int nfe_dev; TYPE_1__ rxq; int nfe_parent_tag; } ;
struct nfe_rx_ring {int rx_data_tag; int * rx_spare_map; scalar_t__ physaddr; int rx_desc_map; int rx_desc_tag; void* desc32; void* desc64; scalar_t__ next; scalar_t__ cur; } ;
struct nfe_rx_data {int * rx_data_map; int * m; } ;
struct nfe_dmamap_arg {scalar_t__ nfe_busaddr; } ;
struct nfe_desc64 {int dummy; } ;
struct nfe_desc32 {int dummy; } ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int MCLBYTES ;
 int NFE_40BIT_ADDR ;
 int NFE_RING_ALIGN ;
 int NFE_RX_RING_COUNT ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_load (int ,int ,void*,int,int ,struct nfe_dmamap_arg*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int device_printf (int ,char*) ;
 int nfe_dma_map_segs ;

__attribute__((used)) static int
nfe_alloc_rx_ring(struct nfe_softc *sc, struct nfe_rx_ring *ring)
{
 struct nfe_dmamap_arg ctx;
 struct nfe_rx_data *data;
 void *desc;
 int i, error, descsize;

 if (sc->nfe_flags & NFE_40BIT_ADDR) {
  desc = ring->desc64;
  descsize = sizeof (struct nfe_desc64);
 } else {
  desc = ring->desc32;
  descsize = sizeof (struct nfe_desc32);
 }

 ring->cur = ring->next = 0;

 error = bus_dma_tag_create(sc->nfe_parent_tag,
     NFE_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     NFE_RX_RING_COUNT * descsize, 1,
     NFE_RX_RING_COUNT * descsize,
     0,
     ((void*)0), ((void*)0),
     &ring->rx_desc_tag);
 if (error != 0) {
  device_printf(sc->nfe_dev, "could not create desc DMA tag\n");
  goto fail;
 }


 error = bus_dmamem_alloc(ring->rx_desc_tag, &desc, BUS_DMA_WAITOK |
     BUS_DMA_COHERENT | BUS_DMA_ZERO, &ring->rx_desc_map);
 if (error != 0) {
  device_printf(sc->nfe_dev, "could not create desc DMA map\n");
  goto fail;
 }
 if (sc->nfe_flags & NFE_40BIT_ADDR)
  ring->desc64 = desc;
 else
  ring->desc32 = desc;


 ctx.nfe_busaddr = 0;
 error = bus_dmamap_load(ring->rx_desc_tag, ring->rx_desc_map, desc,
     NFE_RX_RING_COUNT * descsize, nfe_dma_map_segs, &ctx, 0);
 if (error != 0) {
  device_printf(sc->nfe_dev, "could not load desc DMA map\n");
  goto fail;
 }
 ring->physaddr = ctx.nfe_busaddr;

 error = bus_dma_tag_create(sc->nfe_parent_tag,
     1, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES, 1,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &ring->rx_data_tag);
 if (error != 0) {
  device_printf(sc->nfe_dev, "could not create Rx DMA tag\n");
  goto fail;
 }

 error = bus_dmamap_create(ring->rx_data_tag, 0, &ring->rx_spare_map);
 if (error != 0) {
  device_printf(sc->nfe_dev,
      "could not create Rx DMA spare map\n");
  goto fail;
 }




 for (i = 0; i < NFE_RX_RING_COUNT; i++) {
  data = &sc->rxq.data[i];
  data->rx_data_map = ((void*)0);
  data->m = ((void*)0);
  error = bus_dmamap_create(ring->rx_data_tag, 0,
      &data->rx_data_map);
  if (error != 0) {
   device_printf(sc->nfe_dev,
       "could not create Rx DMA map\n");
   goto fail;
  }
 }

fail:
 return (error);
}
