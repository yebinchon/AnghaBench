
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwdma_seg {int * v_addr; int bus_addr; int dma_map; } ;
struct fwdma_alloc_multi {int ssize; int esize; int nseg; int dma_tag; struct fwdma_seg* seg; } ;
struct firewire_comm {int dmat; } ;
typedef int bus_size_t ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int FW_GMTX (struct firewire_comm*) ;
 int M_FW ;
 int M_WAITOK ;
 int PAGE_SIZE ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int ,int ,int ,int ,int *) ;
 int busdma_lock_mutex ;
 int free (struct fwdma_alloc_multi*,int ) ;
 int fwdma_free_multiseg (struct fwdma_alloc_multi*) ;
 int * fwdma_malloc_size (int ,int *,int,int *,int) ;
 int howmany (int,int) ;
 scalar_t__ malloc (int,int ,int ) ;
 int printf (char*,...) ;
 int rounddown (int,int) ;
 int roundup2 (int,int) ;

struct fwdma_alloc_multi *
fwdma_malloc_multiseg(struct firewire_comm *fc, int alignment,
  int esize, int n, int flag)
{
 struct fwdma_alloc_multi *am;
 struct fwdma_seg *seg;
 bus_size_t ssize;
 int nseg;

 if (esize > PAGE_SIZE) {

  esize = ssize = roundup2(esize, PAGE_SIZE);
  nseg = n;
 } else {

  ssize = rounddown(PAGE_SIZE, esize);
  nseg = howmany(n, ssize / esize);
 }
 am = (struct fwdma_alloc_multi *)malloc(sizeof(struct fwdma_alloc_multi)
   + sizeof(struct fwdma_seg)*nseg, M_FW, M_WAITOK);
 am->ssize = ssize;
 am->esize = esize;
 am->nseg = 0;
 if (bus_dma_tag_create(
              fc->dmat,
                 alignment,
                0,
               BUS_SPACE_MAXADDR_32BIT,
                BUS_SPACE_MAXADDR,
             ((void*)0), ((void*)0),
               ssize,
                 1,
                BUS_SPACE_MAXSIZE_32BIT,
             BUS_DMA_ALLOCNOW,
               busdma_lock_mutex,
              FW_GMTX(fc),
   &am->dma_tag)) {
  printf("fwdma_malloc_multiseg: tag_create failed\n");
  free(am, M_FW);
  return (((void*)0));
 }

 for (seg = &am->seg[0]; nseg--; seg++) {
  seg->v_addr = fwdma_malloc_size(am->dma_tag, &seg->dma_map,
   ssize, &seg->bus_addr, flag);
  if (seg->v_addr == ((void*)0)) {
   printf("fwdma_malloc_multi: malloc_size failed %d\n",
    am->nseg);
   fwdma_free_multiseg(am);
   return (((void*)0));
  }
  am->nseg++;
 }
 return (am);
}
