
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_mw {size_t buff_size; int dma_addr; int dma_tag; int dma_map; int virt_addr; int addr_limit; int xlat_align; int xlat_align_size; } ;
struct ntb_transport_ctx {int dev; struct ntb_transport_mw* mw_vec; } ;
struct ntb_load_cb_args {int addr; scalar_t__ error; } ;


 int BUS_DMA_NOWAIT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,size_t,int,size_t,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 scalar_t__ bus_dmamap_load (int ,int ,int ,size_t,int ,struct ntb_load_cb_args*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int bus_get_dma_tag (int ) ;
 int ntb_free_mw (struct ntb_transport_ctx*,int) ;
 int ntb_load_cb ;
 int ntb_printf (int ,char*,size_t) ;
 size_t roundup (size_t,int ) ;

__attribute__((used)) static int
ntb_set_mw(struct ntb_transport_ctx *nt, int num_mw, size_t size)
{
 struct ntb_transport_mw *mw = &nt->mw_vec[num_mw];
 struct ntb_load_cb_args cba;
 size_t buff_size;

 if (size == 0)
  return (EINVAL);

 buff_size = roundup(size, mw->xlat_align_size);


 if (mw->buff_size == buff_size)
  return (0);

 if (mw->buff_size != 0)
  ntb_free_mw(nt, num_mw);


 mw->buff_size = buff_size;

 if (bus_dma_tag_create(bus_get_dma_tag(nt->dev), mw->xlat_align, 0,
     mw->addr_limit, BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0), mw->buff_size, 1, mw->buff_size,
     0, ((void*)0), ((void*)0), &mw->dma_tag)) {
  ntb_printf(0, "Unable to create MW tag of size %zu\n",
      mw->buff_size);
  mw->buff_size = 0;
  return (ENOMEM);
 }
 if (bus_dmamem_alloc(mw->dma_tag, (void **)&mw->virt_addr,
     BUS_DMA_WAITOK | BUS_DMA_ZERO, &mw->dma_map)) {
  bus_dma_tag_destroy(mw->dma_tag);
  ntb_printf(0, "Unable to allocate MW buffer of size %zu\n",
      mw->buff_size);
  mw->buff_size = 0;
  return (ENOMEM);
 }
 if (bus_dmamap_load(mw->dma_tag, mw->dma_map, mw->virt_addr,
     mw->buff_size, ntb_load_cb, &cba, BUS_DMA_NOWAIT) || cba.error) {
  bus_dmamem_free(mw->dma_tag, mw->virt_addr, mw->dma_map);
  bus_dma_tag_destroy(mw->dma_tag);
  ntb_printf(0, "Unable to load MW buffer of size %zu\n",
      mw->buff_size);
  mw->buff_size = 0;
  return (ENOMEM);
 }
 mw->dma_addr = cba.addr;

 return (0);
}
