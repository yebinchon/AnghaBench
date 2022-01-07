
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrsas_softc {int ctlr_info_mem; int mrsas_dev; int ctlr_info_phys_addr; int ctlr_info_dmamap; int ctlr_info_tag; int mrsas_parent_tag; } ;
struct mrsas_ctrl_info {int dummy; } ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENOMEM ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 scalar_t__ bus_dmamap_load (int ,int ,int ,int,int ,int *,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int device_printf (int ,char*) ;
 int memset (int ,int ,int) ;
 int mrsas_addr_cb ;

int
mrsas_alloc_ctlr_info_cmd(struct mrsas_softc *sc)
{
 int ctlr_info_size;


 ctlr_info_size = sizeof(struct mrsas_ctrl_info);
 if (bus_dma_tag_create(sc->mrsas_parent_tag,
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     ctlr_info_size,
     1,
     ctlr_info_size,
     BUS_DMA_ALLOCNOW,
     ((void*)0), ((void*)0),
     &sc->ctlr_info_tag)) {
  device_printf(sc->mrsas_dev, "Cannot allocate ctlr info tag\n");
  return (ENOMEM);
 }
 if (bus_dmamem_alloc(sc->ctlr_info_tag, (void **)&sc->ctlr_info_mem,
     BUS_DMA_NOWAIT, &sc->ctlr_info_dmamap)) {
  device_printf(sc->mrsas_dev, "Cannot allocate ctlr info cmd mem\n");
  return (ENOMEM);
 }
 if (bus_dmamap_load(sc->ctlr_info_tag, sc->ctlr_info_dmamap,
     sc->ctlr_info_mem, ctlr_info_size, mrsas_addr_cb,
     &sc->ctlr_info_phys_addr, BUS_DMA_NOWAIT)) {
  device_printf(sc->mrsas_dev, "Cannot load ctlr info cmd mem\n");
  return (ENOMEM);
 }
 memset(sc->ctlr_info_mem, 0, ctlr_info_size);
 return (0);
}
