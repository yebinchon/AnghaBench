
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2860_txd {int dummy; } ;
struct rt2860_tx_ring {int desc_map; int desc_dmat; int paddr; int txd; } ;
struct rt2860_softc {int sc_dev; } ;


 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int RT2860_TX_RING_COUNT ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,int *,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 int rt2860_dma_map_addr ;
 int rt2860_free_tx_ring (struct rt2860_softc*,struct rt2860_tx_ring*) ;

__attribute__((used)) static int
rt2860_alloc_tx_ring(struct rt2860_softc *sc, struct rt2860_tx_ring *ring)
{
 int size, error;

 size = RT2860_TX_RING_COUNT * sizeof (struct rt2860_txd);

 error = bus_dma_tag_create(bus_get_dma_tag(sc->sc_dev), 16, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     size, 1, size, 0, ((void*)0), ((void*)0), &ring->desc_dmat);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not create desc DMA tag\n");
  goto fail;
 }

 error = bus_dmamem_alloc(ring->desc_dmat, (void **)&ring->txd,
     BUS_DMA_NOWAIT | BUS_DMA_ZERO, &ring->desc_map);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not allocate DMA memory\n");
  goto fail;
 }

 error = bus_dmamap_load(ring->desc_dmat, ring->desc_map, ring->txd,
     size, rt2860_dma_map_addr, &ring->paddr, 0);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not load desc DMA map\n");
  goto fail;
 }

 bus_dmamap_sync(ring->desc_dmat, ring->desc_map, BUS_DMASYNC_PREWRITE);

 return 0;

fail: rt2860_free_tx_ring(sc, ring);
 return error;
}
