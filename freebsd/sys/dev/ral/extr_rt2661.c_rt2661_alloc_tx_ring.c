
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2661_tx_ring {int count; TYPE_1__* data; int data_dmat; int physaddr; int desc; int desc_map; int desc_dmat; scalar_t__ stat; scalar_t__ next; scalar_t__ cur; scalar_t__ queued; } ;
struct rt2661_tx_data {int dummy; } ;
struct rt2661_softc {int sc_dev; } ;
struct TYPE_2__ {int map; } ;


 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENOMEM ;
 int MCLBYTES ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int RT2661_MAX_SCATTER ;
 int RT2661_TX_DESC_SIZE ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,int *,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 TYPE_1__* malloc (int,int ,int) ;
 int rt2661_dma_map_addr ;
 int rt2661_free_tx_ring (struct rt2661_softc*,struct rt2661_tx_ring*) ;

__attribute__((used)) static int
rt2661_alloc_tx_ring(struct rt2661_softc *sc, struct rt2661_tx_ring *ring,
    int count)
{
 int i, error;

 ring->count = count;
 ring->queued = 0;
 ring->cur = ring->next = ring->stat = 0;

 error = bus_dma_tag_create(bus_get_dma_tag(sc->sc_dev), 4, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     count * RT2661_TX_DESC_SIZE, 1, count * RT2661_TX_DESC_SIZE,
     0, ((void*)0), ((void*)0), &ring->desc_dmat);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not create desc DMA tag\n");
  goto fail;
 }

 error = bus_dmamem_alloc(ring->desc_dmat, (void **)&ring->desc,
     BUS_DMA_NOWAIT | BUS_DMA_ZERO, &ring->desc_map);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not allocate DMA memory\n");
  goto fail;
 }

 error = bus_dmamap_load(ring->desc_dmat, ring->desc_map, ring->desc,
     count * RT2661_TX_DESC_SIZE, rt2661_dma_map_addr, &ring->physaddr,
     0);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not load desc DMA map\n");
  goto fail;
 }

 ring->data = malloc(count * sizeof (struct rt2661_tx_data), M_DEVBUF,
     M_NOWAIT | M_ZERO);
 if (ring->data == ((void*)0)) {
  device_printf(sc->sc_dev, "could not allocate soft data\n");
  error = ENOMEM;
  goto fail;
 }

 error = bus_dma_tag_create(bus_get_dma_tag(sc->sc_dev), 1, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), MCLBYTES,
     RT2661_MAX_SCATTER, MCLBYTES, 0, ((void*)0), ((void*)0), &ring->data_dmat);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not create data DMA tag\n");
  goto fail;
 }

 for (i = 0; i < count; i++) {
  error = bus_dmamap_create(ring->data_dmat, 0,
      &ring->data[i].map);
  if (error != 0) {
   device_printf(sc->sc_dev, "could not create DMA map\n");
   goto fail;
  }
 }

 return 0;

fail: rt2661_free_tx_ring(sc, ring);
 return error;
}
