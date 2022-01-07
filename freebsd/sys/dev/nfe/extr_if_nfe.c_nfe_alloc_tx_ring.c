
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfe_tx_ring {TYPE_1__* data; int tx_data_tag; scalar_t__ physaddr; int tx_desc_map; int tx_desc_tag; void* desc32; void* desc64; scalar_t__ next; scalar_t__ cur; scalar_t__ queued; } ;
struct nfe_softc {int nfe_flags; int nfe_dev; int nfe_parent_tag; } ;
struct nfe_dmamap_arg {scalar_t__ nfe_busaddr; } ;
struct nfe_desc64 {int dummy; } ;
struct nfe_desc32 {int dummy; } ;
struct TYPE_2__ {int tx_data_map; } ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int NFE_40BIT_ADDR ;
 int NFE_MAX_SCATTER ;
 int NFE_RING_ALIGN ;
 int NFE_TSO_MAXSGSIZE ;
 int NFE_TSO_MAXSIZE ;
 int NFE_TX_RING_COUNT ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,void*,int,int ,struct nfe_dmamap_arg*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int device_printf (int ,char*) ;
 int nfe_dma_map_segs ;

__attribute__((used)) static int
nfe_alloc_tx_ring(struct nfe_softc *sc, struct nfe_tx_ring *ring)
{
 struct nfe_dmamap_arg ctx;
 int i, error;
 void *desc;
 int descsize;

 if (sc->nfe_flags & NFE_40BIT_ADDR) {
  desc = ring->desc64;
  descsize = sizeof (struct nfe_desc64);
 } else {
  desc = ring->desc32;
  descsize = sizeof (struct nfe_desc32);
 }

 ring->queued = 0;
 ring->cur = ring->next = 0;

 error = bus_dma_tag_create(sc->nfe_parent_tag,
     NFE_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     NFE_TX_RING_COUNT * descsize, 1,
     NFE_TX_RING_COUNT * descsize,
     0,
     ((void*)0), ((void*)0),
     &ring->tx_desc_tag);
 if (error != 0) {
  device_printf(sc->nfe_dev, "could not create desc DMA tag\n");
  goto fail;
 }

 error = bus_dmamem_alloc(ring->tx_desc_tag, &desc, BUS_DMA_WAITOK |
     BUS_DMA_COHERENT | BUS_DMA_ZERO, &ring->tx_desc_map);
 if (error != 0) {
  device_printf(sc->nfe_dev, "could not create desc DMA map\n");
  goto fail;
 }
 if (sc->nfe_flags & NFE_40BIT_ADDR)
  ring->desc64 = desc;
 else
  ring->desc32 = desc;

 ctx.nfe_busaddr = 0;
 error = bus_dmamap_load(ring->tx_desc_tag, ring->tx_desc_map, desc,
     NFE_TX_RING_COUNT * descsize, nfe_dma_map_segs, &ctx, 0);
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
     NFE_TSO_MAXSIZE,
     NFE_MAX_SCATTER,
     NFE_TSO_MAXSGSIZE,
     0,
     ((void*)0), ((void*)0),
     &ring->tx_data_tag);
 if (error != 0) {
  device_printf(sc->nfe_dev, "could not create Tx DMA tag\n");
  goto fail;
 }

 for (i = 0; i < NFE_TX_RING_COUNT; i++) {
  error = bus_dmamap_create(ring->tx_data_tag, 0,
      &ring->data[i].tx_data_map);
  if (error != 0) {
   device_printf(sc->nfe_dev,
       "could not create Tx DMA map\n");
   goto fail;
  }
 }

fail:
 return (error);
}
