
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_softc {int sc_dev; } ;
struct sec_dma_mem {int dma_is_map; int * dma_vaddr; int dma_tag; int dma_map; } ;
struct sec_desc_map_info {int dummy; } ;
struct mbuf {int dummy; } ;
typedef int bus_size_t ;


 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int EBUSY ;
 int EINVAL ;
 int SEC_DMA_ALIGNMENT ;
 int SEC_FREE_LT_CNT (struct sec_softc*) ;
 int SEC_MAX_DMA_BLOCK_SIZE ;



 int bus_dma_tag_create (int *,int ,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_load (int ,int ,void*,int,int ,struct sec_desc_map_info*,int ) ;
 int bus_dmamap_load_mbuf (int ,int ,void*,int ,struct sec_desc_map_info*,int ) ;
 int bus_dmamap_load_uio (int ,int ,void*,int ,struct sec_desc_map_info*,int ) ;
 int device_printf (int ,char*,int) ;
 int m_length (struct mbuf*,int *) ;
 int sec_dma_map_desc_cb ;
 int sec_dma_map_desc_cb2 ;

__attribute__((used)) static int
sec_desc_map_dma(struct sec_softc *sc, struct sec_dma_mem *dma_mem, void *mem,
    bus_size_t size, int type, struct sec_desc_map_info *sdmi)
{
 int error;

 if (dma_mem->dma_vaddr != ((void*)0))
  return (EBUSY);

 switch (type) {
 case 129:
  break;
 case 128:
  size = SEC_FREE_LT_CNT(sc) * SEC_MAX_DMA_BLOCK_SIZE;
  break;
 case 130:
  size = m_length((struct mbuf*)mem, ((void*)0));
  break;
 default:
  return (EINVAL);
 }

 error = bus_dma_tag_create(((void*)0),
  SEC_DMA_ALIGNMENT, 0,
  BUS_SPACE_MAXADDR_32BIT,
  BUS_SPACE_MAXADDR,
  ((void*)0), ((void*)0),
  size,
  SEC_FREE_LT_CNT(sc),
  SEC_MAX_DMA_BLOCK_SIZE, 0,
  ((void*)0), ((void*)0),
  &(dma_mem->dma_tag));

 if (error) {
  device_printf(sc->sc_dev, "failed to allocate busdma tag, error"
      " %i!\n", error);
  dma_mem->dma_vaddr = ((void*)0);
  return (error);
 }

 error = bus_dmamap_create(dma_mem->dma_tag, 0, &(dma_mem->dma_map));

 if (error) {
  device_printf(sc->sc_dev, "failed to create DMA map, error %i!"
      "\n", error);
  bus_dma_tag_destroy(dma_mem->dma_tag);
  return (error);
 }

 switch (type) {
 case 129:
  error = bus_dmamap_load(dma_mem->dma_tag, dma_mem->dma_map,
      mem, size, sec_dma_map_desc_cb, sdmi, BUS_DMA_NOWAIT);
  break;
 case 128:
  error = bus_dmamap_load_uio(dma_mem->dma_tag, dma_mem->dma_map,
      mem, sec_dma_map_desc_cb2, sdmi, BUS_DMA_NOWAIT);
  break;
 case 130:
  error = bus_dmamap_load_mbuf(dma_mem->dma_tag, dma_mem->dma_map,
      mem, sec_dma_map_desc_cb2, sdmi, BUS_DMA_NOWAIT);
  break;
 }

 if (error) {
  device_printf(sc->sc_dev, "cannot get address of the DMA"
      " memory, error %i!\n", error);
  bus_dmamap_destroy(dma_mem->dma_tag, dma_mem->dma_map);
  bus_dma_tag_destroy(dma_mem->dma_tag);
  return (error);
 }

 dma_mem->dma_is_map = 1;
 dma_mem->dma_vaddr = mem;

 return (0);
}
