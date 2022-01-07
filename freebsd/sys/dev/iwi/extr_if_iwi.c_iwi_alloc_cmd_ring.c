
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {int sc_dev; } ;
struct iwi_cmd_ring {int count; int physaddr; int desc; int desc_map; int desc_dmat; scalar_t__ next; scalar_t__ cur; scalar_t__ queued; } ;


 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int IWI_CMD_DESC_SIZE ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,int *,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 int iwi_dma_map_addr ;
 int iwi_free_cmd_ring (struct iwi_softc*,struct iwi_cmd_ring*) ;

__attribute__((used)) static int
iwi_alloc_cmd_ring(struct iwi_softc *sc, struct iwi_cmd_ring *ring, int count)
{
 int error;

 ring->count = count;
 ring->queued = 0;
 ring->cur = ring->next = 0;

 error = bus_dma_tag_create(bus_get_dma_tag(sc->sc_dev), 4, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     count * IWI_CMD_DESC_SIZE, 1, count * IWI_CMD_DESC_SIZE, 0,
     ((void*)0), ((void*)0), &ring->desc_dmat);
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
     count * IWI_CMD_DESC_SIZE, iwi_dma_map_addr, &ring->physaddr, 0);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not load desc DMA map\n");
  goto fail;
 }

 return 0;

fail: iwi_free_cmd_ring(sc, ring);
 return error;
}
