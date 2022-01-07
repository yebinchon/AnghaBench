
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msk_stat_desc {int dummy; } ;
struct msk_softc {int msk_stat_count; scalar_t__ msk_stat_ring_paddr; int msk_dev; int msk_stat_ring; int msk_stat_map; int msk_stat_tag; } ;
struct msk_dmamap_arg {scalar_t__ msk_busaddr; } ;
typedef int bus_size_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int MSK_RX_RING_CNT ;
 int MSK_STAT_ALIGN ;
 int MSK_TX_RING_CNT ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,struct msk_dmamap_arg*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 int imin (int,int ) ;
 int msk_dmamap_cb ;
 int roundup2 (int,int) ;

__attribute__((used)) static int
msk_status_dma_alloc(struct msk_softc *sc)
{
 struct msk_dmamap_arg ctx;
 bus_size_t stat_sz;
 int count, error;
 count = 3 * MSK_RX_RING_CNT + MSK_TX_RING_CNT;
 count = imin(4096, roundup2(count, 1024));
 sc->msk_stat_count = count;
 stat_sz = count * sizeof(struct msk_stat_desc);
 error = bus_dma_tag_create(
      bus_get_dma_tag(sc->msk_dev),
      MSK_STAT_ALIGN, 0,
      BUS_SPACE_MAXADDR,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      stat_sz,
      1,
      stat_sz,
      0,
      ((void*)0), ((void*)0),
      &sc->msk_stat_tag);
 if (error != 0) {
  device_printf(sc->msk_dev,
      "failed to create status DMA tag\n");
  return (error);
 }


 error = bus_dmamem_alloc(sc->msk_stat_tag,
     (void **)&sc->msk_stat_ring, BUS_DMA_WAITOK | BUS_DMA_COHERENT |
     BUS_DMA_ZERO, &sc->msk_stat_map);
 if (error != 0) {
  device_printf(sc->msk_dev,
      "failed to allocate DMA'able memory for status ring\n");
  return (error);
 }

 ctx.msk_busaddr = 0;
 error = bus_dmamap_load(sc->msk_stat_tag, sc->msk_stat_map,
     sc->msk_stat_ring, stat_sz, msk_dmamap_cb, &ctx, BUS_DMA_NOWAIT);
 if (error != 0) {
  device_printf(sc->msk_dev,
      "failed to load DMA'able memory for status ring\n");
  return (error);
 }
 sc->msk_stat_ring_paddr = ctx.msk_busaddr;

 return (0);
}
