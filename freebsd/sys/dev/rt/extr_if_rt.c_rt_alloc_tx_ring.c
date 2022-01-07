
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_txdesc {int dummy; } ;
struct rt_softc_tx_ring {int qid; scalar_t__ data_next; scalar_t__ data_cur; scalar_t__ data_queued; int data_dma_tag; struct rt_softc_tx_data* data; int seg0_phys_addr; int seg0; int seg0_dma_map; int seg0_dma_tag; scalar_t__ desc_next; scalar_t__ desc_cur; scalar_t__ desc_queued; int desc_phys_addr; int desc; int desc_dma_map; int desc_dma_tag; int lock; } ;
struct rt_softc_tx_data {int dma_map; } ;
struct rt_softc {int dev; } ;


 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int MJUMPAGESIZE ;
 int MTX_DEF ;
 int PAGE_SIZE ;
 int RT_SOFTC_MAX_SCATTER ;
 int RT_SOFTC_TX_RING_DATA_COUNT ;
 int RT_SOFTC_TX_RING_DESC_COUNT ;
 int RT_TX_DATA_SEG0_SIZE ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,int *,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,int ,int *,int ) ;
 int rt_dma_map_addr ;
 int rt_free_tx_ring (struct rt_softc*,struct rt_softc_tx_ring*) ;

__attribute__((used)) static int
rt_alloc_tx_ring(struct rt_softc *sc, struct rt_softc_tx_ring *ring, int qid)
{
 struct rt_softc_tx_data *data;
 int error, i;

 mtx_init(&ring->lock, device_get_nameunit(sc->dev), ((void*)0), MTX_DEF);

 error = bus_dma_tag_create(bus_get_dma_tag(sc->dev), PAGE_SIZE, 0,
  BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
  RT_SOFTC_TX_RING_DESC_COUNT * sizeof(struct rt_txdesc), 1,
  RT_SOFTC_TX_RING_DESC_COUNT * sizeof(struct rt_txdesc),
  0, ((void*)0), ((void*)0), &ring->desc_dma_tag);
 if (error != 0) {
  device_printf(sc->dev,
      "could not create Tx desc DMA tag\n");
  goto fail;
 }

 error = bus_dmamem_alloc(ring->desc_dma_tag, (void **) &ring->desc,
     BUS_DMA_NOWAIT | BUS_DMA_ZERO, &ring->desc_dma_map);
 if (error != 0) {
  device_printf(sc->dev,
      "could not allocate Tx desc DMA memory\n");
  goto fail;
 }

 error = bus_dmamap_load(ring->desc_dma_tag, ring->desc_dma_map,
     ring->desc, (RT_SOFTC_TX_RING_DESC_COUNT *
     sizeof(struct rt_txdesc)), rt_dma_map_addr,
     &ring->desc_phys_addr, 0);
 if (error != 0) {
  device_printf(sc->dev, "could not load Tx desc DMA map\n");
  goto fail;
 }

 ring->desc_queued = 0;
 ring->desc_cur = 0;
 ring->desc_next = 0;

 error = bus_dma_tag_create(bus_get_dma_tag(sc->dev), PAGE_SIZE, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     RT_SOFTC_TX_RING_DATA_COUNT * RT_TX_DATA_SEG0_SIZE, 1,
     RT_SOFTC_TX_RING_DATA_COUNT * RT_TX_DATA_SEG0_SIZE,
     0, ((void*)0), ((void*)0), &ring->seg0_dma_tag);
 if (error != 0) {
  device_printf(sc->dev,
      "could not create Tx seg0 DMA tag\n");
  goto fail;
 }

 error = bus_dmamem_alloc(ring->seg0_dma_tag, (void **) &ring->seg0,
     BUS_DMA_NOWAIT | BUS_DMA_ZERO, &ring->seg0_dma_map);
 if (error != 0) {
  device_printf(sc->dev,
      "could not allocate Tx seg0 DMA memory\n");
  goto fail;
 }

 error = bus_dmamap_load(ring->seg0_dma_tag, ring->seg0_dma_map,
     ring->seg0,
     RT_SOFTC_TX_RING_DATA_COUNT * RT_TX_DATA_SEG0_SIZE,
     rt_dma_map_addr, &ring->seg0_phys_addr, 0);
 if (error != 0) {
  device_printf(sc->dev, "could not load Tx seg0 DMA map\n");
  goto fail;
 }

 error = bus_dma_tag_create(bus_get_dma_tag(sc->dev), PAGE_SIZE, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     MJUMPAGESIZE, RT_SOFTC_MAX_SCATTER, MJUMPAGESIZE, 0, ((void*)0), ((void*)0),
     &ring->data_dma_tag);
 if (error != 0) {
  device_printf(sc->dev,
      "could not create Tx data DMA tag\n");
  goto fail;
 }

 for (i = 0; i < RT_SOFTC_TX_RING_DATA_COUNT; i++) {
  data = &ring->data[i];

  error = bus_dmamap_create(ring->data_dma_tag, 0,
      &data->dma_map);
  if (error != 0) {
   device_printf(sc->dev, "could not create Tx data DMA "
       "map\n");
   goto fail;
  }
 }

 ring->data_queued = 0;
 ring->data_cur = 0;
 ring->data_next = 0;

 ring->qid = qid;
 return (0);

fail:
 rt_free_tx_ring(sc, ring);
 return (error);
}
