
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dmat; int mapp; int virt; int phys; int size; } ;
typedef TYPE_1__ cx_dma_mem_t ;


 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_24BIT ;
 int bus_dma_tag_create (int *,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,int *,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int cx_bus_dmamap_addr ;
 int printf (char*,...) ;

__attribute__((used)) static int
cx_bus_dma_mem_alloc (int bnum, int cnum, cx_dma_mem_t *dmem)
{
 int error;

 error = bus_dma_tag_create (((void*)0), 16, 0, BUS_SPACE_MAXADDR_24BIT,
  BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), dmem->size, 1,
  dmem->size, 0, ((void*)0), ((void*)0), &dmem->dmat);
 if (error) {
  if (cnum >= 0) printf ("cx%d-%d: ", bnum, cnum);
  else printf ("cx%d: ", bnum);
  printf ("couldn't allocate tag for dma memory\n");
   return 0;
 }
 error = bus_dmamem_alloc (dmem->dmat, (void **)&dmem->virt,
  BUS_DMA_NOWAIT | BUS_DMA_ZERO, &dmem->mapp);
 if (error) {
  if (cnum >= 0) printf ("cx%d-%d: ", bnum, cnum);
  else printf ("cx%d: ", bnum);
  printf ("couldn't allocate mem for dma memory\n");
  bus_dma_tag_destroy (dmem->dmat);
   return 0;
 }
 error = bus_dmamap_load (dmem->dmat, dmem->mapp, dmem->virt,
  dmem->size, cx_bus_dmamap_addr, &dmem->phys, 0);
 if (error) {
  if (cnum >= 0) printf ("cx%d-%d: ", bnum, cnum);
  else printf ("cx%d: ", bnum);
  printf ("couldn't load mem map for dma memory\n");
  bus_dmamem_free (dmem->dmat, dmem->virt, dmem->mapp);
  bus_dma_tag_destroy (dmem->dmat);
   return 0;
 }
 return 1;
}
