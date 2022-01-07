
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bwi_softc {int sc_dev; } ;
struct bwi_ring_data {int rdata_txrx_ctrl; int * rdata_desc; int rdata_dmap; int rdata_paddr; } ;
typedef int bus_size_t ;
typedef int bus_dma_tag_t ;


 int BUS_DMA_NOWAIT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int bus_dmamap_load (int ,int ,int *,int ,int ,int *,int ) ;
 int bus_dmamem_alloc (int ,int **,int,int *) ;
 int bus_dmamem_free (int ,int *,int ) ;
 int bwi_dma_ring_addr ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
bwi_dma_ring_alloc(struct bwi_softc *sc, bus_dma_tag_t dtag,
     struct bwi_ring_data *rd, bus_size_t size,
     uint32_t txrx_ctrl)
{
 int error;

 error = bus_dmamem_alloc(dtag, &rd->rdata_desc,
     BUS_DMA_WAITOK | BUS_DMA_ZERO,
     &rd->rdata_dmap);
 if (error) {
  device_printf(sc->sc_dev, "can't allocate DMA mem\n");
  return error;
 }

 error = bus_dmamap_load(dtag, rd->rdata_dmap, rd->rdata_desc, size,
    bwi_dma_ring_addr, &rd->rdata_paddr,
    BUS_DMA_NOWAIT);
 if (error) {
  device_printf(sc->sc_dev, "can't load DMA mem\n");
  bus_dmamem_free(dtag, rd->rdata_desc, rd->rdata_dmap);
  rd->rdata_desc = ((void*)0);
  return error;
 }

 rd->rdata_txrx_ctrl = txrx_ctrl;
 return 0;
}
