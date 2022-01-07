
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwi_tx_ring {int count; TYPE_1__* data; int data_dmat; int physaddr; int desc; int desc_map; int desc_dmat; void* csr_widx; void* csr_ridx; scalar_t__ next; scalar_t__ cur; scalar_t__ queued; } ;
struct iwi_tx_data {int dummy; } ;
struct iwi_softc {int sc_dev; } ;
typedef void* bus_addr_t ;
struct TYPE_2__ {int map; } ;


 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENOMEM ;
 int IWI_MAX_NSEG ;
 int IWI_TX_DESC_SIZE ;
 int MCLBYTES ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,int *,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 int iwi_dma_map_addr ;
 int iwi_free_tx_ring (struct iwi_softc*,struct iwi_tx_ring*) ;
 TYPE_1__* malloc (int,int ,int) ;

__attribute__((used)) static int
iwi_alloc_tx_ring(struct iwi_softc *sc, struct iwi_tx_ring *ring, int count,
    bus_addr_t csr_ridx, bus_addr_t csr_widx)
{
 int i, error;

 ring->count = count;
 ring->queued = 0;
 ring->cur = ring->next = 0;
 ring->csr_ridx = csr_ridx;
 ring->csr_widx = csr_widx;

 error = bus_dma_tag_create(bus_get_dma_tag(sc->sc_dev), 4, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     count * IWI_TX_DESC_SIZE, 1, count * IWI_TX_DESC_SIZE, 0, ((void*)0),
     ((void*)0), &ring->desc_dmat);
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
     count * IWI_TX_DESC_SIZE, iwi_dma_map_addr, &ring->physaddr, 0);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not load desc DMA map\n");
  goto fail;
 }

 ring->data = malloc(count * sizeof (struct iwi_tx_data), M_DEVBUF,
     M_NOWAIT | M_ZERO);
 if (ring->data == ((void*)0)) {
  device_printf(sc->sc_dev, "could not allocate soft data\n");
  error = ENOMEM;
  goto fail;
 }

 error = bus_dma_tag_create(bus_get_dma_tag(sc->sc_dev), 1, 0,
 BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), MCLBYTES,
 IWI_MAX_NSEG, MCLBYTES, 0, ((void*)0), ((void*)0), &ring->data_dmat);
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

fail: iwi_free_tx_ring(sc, ring);
 return error;
}
