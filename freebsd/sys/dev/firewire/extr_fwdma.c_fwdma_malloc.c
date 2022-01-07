
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwdma_alloc {void* v_addr; int bus_addr; int dma_map; int dma_tag; } ;
struct firewire_comm {int dmat; } ;
typedef int bus_size_t ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int FW_GMTX (struct firewire_comm*) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,void*,int ,int ,int *,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int busdma_lock_mutex ;
 int fwdma_map_cb ;
 int printf (char*) ;

void *
fwdma_malloc(struct firewire_comm *fc, int alignment, bus_size_t size,
 struct fwdma_alloc *dma, int flag)
{
 int err;

 dma->v_addr = ((void*)0);
 err = bus_dma_tag_create(
             fc->dmat,
                alignment,
               0,
              BUS_SPACE_MAXADDR_32BIT,
               BUS_SPACE_MAXADDR,
            ((void*)0), ((void*)0),
              size,
                1,
               BUS_SPACE_MAXSIZE_32BIT,
            BUS_DMA_ALLOCNOW,
              busdma_lock_mutex,
             FW_GMTX(fc),
  &dma->dma_tag);
 if (err) {
  printf("fwdma_malloc: failed(1)\n");
  return (((void*)0));
 }

 err = bus_dmamem_alloc(dma->dma_tag, &dma->v_addr,
  flag, &dma->dma_map);
 if (err) {
  printf("fwdma_malloc: failed(2)\n");

  return (((void*)0));
 }

 bus_dmamap_load(dma->dma_tag, dma->dma_map, dma->v_addr,
  size, fwdma_map_cb, &dma->bus_addr, 0);

 return (dma->v_addr);
}
