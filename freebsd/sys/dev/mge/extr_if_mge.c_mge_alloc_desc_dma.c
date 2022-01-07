
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct mge_softc {int ifp; int dev; int mge_desc_dtag; } ;
struct mge_desc_wrapper {TYPE_1__* mge_desc; struct mbuf* buffer; int buffer_dmap; void* mge_desc_paddr; int desc_dmap; } ;
struct mge_desc {int dummy; } ;
struct mbuf {int dummy; } ;
typedef int bus_dma_tag_t ;
typedef void* bus_addr_t ;
struct TYPE_3__ {void* buffer; void* next_desc; } ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENXIO ;
 int MCLBYTES ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,TYPE_1__*,int,int ,void**,int) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_dmamem_free (int ,TYPE_1__*,int ) ;
 int bus_get_dma_tag (int ) ;
 int if_printf (int ,char*) ;
 int mge_get_dma_addr ;

__attribute__((used)) static int
mge_alloc_desc_dma(struct mge_softc *sc, struct mge_desc_wrapper* tab,
    uint32_t size, bus_dma_tag_t *buffer_tag)
{
 struct mge_desc_wrapper *dw;
 bus_addr_t desc_paddr;
 int i, error;

 desc_paddr = 0;
 for (i = size - 1; i >= 0; i--) {
  dw = &(tab[i]);
  error = bus_dmamem_alloc(sc->mge_desc_dtag,
      (void**)&(dw->mge_desc),
      BUS_DMA_NOWAIT | BUS_DMA_ZERO | BUS_DMA_COHERENT,
      &(dw->desc_dmap));

  if (error) {
   if_printf(sc->ifp, "failed to allocate DMA memory\n");
   dw->mge_desc = ((void*)0);
   return (ENXIO);
  }

  error = bus_dmamap_load(sc->mge_desc_dtag, dw->desc_dmap,
      dw->mge_desc, sizeof(struct mge_desc), mge_get_dma_addr,
      &(dw->mge_desc_paddr), BUS_DMA_NOWAIT);

  if (error) {
   if_printf(sc->ifp, "can't load descriptor\n");
   bus_dmamem_free(sc->mge_desc_dtag, dw->mge_desc,
       dw->desc_dmap);
   dw->mge_desc = ((void*)0);
   return (ENXIO);
  }


  dw->mge_desc->next_desc = desc_paddr;
  desc_paddr = dw->mge_desc_paddr;
 }
 tab[size - 1].mge_desc->next_desc = desc_paddr;


 error = bus_dma_tag_create(bus_get_dma_tag(sc->dev),
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES, 1,
     MCLBYTES, 0,
     ((void*)0), ((void*)0),
     buffer_tag);
 if (error) {
  if_printf(sc->ifp, "failed to create busdma tag for mbufs\n");
  return (ENXIO);
 }


 for (i = 0; i < size; i++) {
  dw = &(tab[i]);
  error = bus_dmamap_create(*buffer_tag, 0, &dw->buffer_dmap);
  if (error) {
   if_printf(sc->ifp, "failed to create map for mbuf\n");
   return (ENXIO);
  }

  dw->buffer = (struct mbuf*)((void*)0);
  dw->mge_desc->buffer = (bus_addr_t)((void*)0);
 }

 return (0);
}
