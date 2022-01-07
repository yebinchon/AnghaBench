
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrsas_softc {int el_info_mem; int mrsas_dev; int el_info_phys_addr; int el_info_dmamap; int el_info_tag; int mrsas_parent_tag; } ;
struct mrsas_evt_log_info {int dummy; } ;


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
mrsas_alloc_evt_log_info_cmd(struct mrsas_softc *sc)
{
 int el_info_size;


 el_info_size = sizeof(struct mrsas_evt_log_info);
 if (bus_dma_tag_create(sc->mrsas_parent_tag,
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     el_info_size,
     1,
     el_info_size,
     BUS_DMA_ALLOCNOW,
     ((void*)0), ((void*)0),
     &sc->el_info_tag)) {
  device_printf(sc->mrsas_dev, "Cannot allocate event log info tag\n");
  return (ENOMEM);
 }
 if (bus_dmamem_alloc(sc->el_info_tag, (void **)&sc->el_info_mem,
     BUS_DMA_NOWAIT, &sc->el_info_dmamap)) {
  device_printf(sc->mrsas_dev, "Cannot allocate event log info cmd mem\n");
  return (ENOMEM);
 }
 if (bus_dmamap_load(sc->el_info_tag, sc->el_info_dmamap,
     sc->el_info_mem, el_info_size, mrsas_addr_cb,
     &sc->el_info_phys_addr, BUS_DMA_NOWAIT)) {
  device_printf(sc->mrsas_dev, "Cannot load event log info cmd mem\n");
  return (ENOMEM);
 }
 memset(sc->el_info_mem, 0, el_info_size);
 return (0);
}
