
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int parent_dmat; } ;
struct mpt_page_memory {int paddr; int * vaddr; int tag; int map; } ;
struct mpt_map_info {int error; int phys; struct mpt_softc* mpt; } ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENOSPC ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_load (int ,int ,int *,size_t,int ,struct mpt_map_info*,int) ;
 int bus_dmamem_alloc (int ,int **,int,int *) ;
 int bus_dmamem_free (int ,int *,int ) ;
 int mpt_dma_tag_create (struct mpt_softc*,int ,int,int ,int ,int ,int *,int *,size_t,int,size_t,int ,int *) ;
 int mpt_map_rquest ;

__attribute__((used)) static int
mpt_alloc_buffer(struct mpt_softc *mpt, struct mpt_page_memory *page_mem,
    size_t len)
{
 struct mpt_map_info mi;
 int error;

 page_mem->vaddr = ((void*)0);


 if (len > 16 * 1024 * 1024)
  return (ENOSPC);
 error = mpt_dma_tag_create(mpt, mpt->parent_dmat, 1, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     len, 1, len, 0, &page_mem->tag);
 if (error)
  return (error);
 error = bus_dmamem_alloc(page_mem->tag, &page_mem->vaddr,
     BUS_DMA_NOWAIT | BUS_DMA_COHERENT, &page_mem->map);
 if (error) {
  bus_dma_tag_destroy(page_mem->tag);
  return (error);
 }
 mi.mpt = mpt;
 error = bus_dmamap_load(page_mem->tag, page_mem->map, page_mem->vaddr,
     len, mpt_map_rquest, &mi, BUS_DMA_NOWAIT);
 if (error == 0)
  error = mi.error;
 if (error) {
  bus_dmamem_free(page_mem->tag, page_mem->vaddr, page_mem->map);
  bus_dma_tag_destroy(page_mem->tag);
  page_mem->vaddr = ((void*)0);
  return (error);
 }
 page_mem->paddr = mi.phys;
 return (0);
}
