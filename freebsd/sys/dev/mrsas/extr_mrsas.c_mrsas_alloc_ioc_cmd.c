
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrsas_softc {int mrsas_dev; int ioc_init_phys_mem; int ioc_init_mem; int ioc_init_dmamap; int ioc_init_tag; int mrsas_parent_tag; } ;
typedef int MPI2_IOC_INIT_REQUEST ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENOMEM ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 scalar_t__ bus_dmamap_load (int ,int ,int ,int,int ,int *,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bzero (int ,int) ;
 int device_printf (int ,char*) ;
 int mrsas_addr_cb ;

int
mrsas_alloc_ioc_cmd(struct mrsas_softc *sc)
{
 int ioc_init_size;


 ioc_init_size = 1024 + sizeof(MPI2_IOC_INIT_REQUEST);
 if (bus_dma_tag_create(sc->mrsas_parent_tag,
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     ioc_init_size,
     1,
     ioc_init_size,
     BUS_DMA_ALLOCNOW,
     ((void*)0), ((void*)0),
     &sc->ioc_init_tag)) {
  device_printf(sc->mrsas_dev, "Cannot allocate ioc init tag\n");
  return (ENOMEM);
 }
 if (bus_dmamem_alloc(sc->ioc_init_tag, (void **)&sc->ioc_init_mem,
     BUS_DMA_NOWAIT, &sc->ioc_init_dmamap)) {
  device_printf(sc->mrsas_dev, "Cannot allocate ioc init cmd mem\n");
  return (ENOMEM);
 }
 bzero(sc->ioc_init_mem, ioc_init_size);
 if (bus_dmamap_load(sc->ioc_init_tag, sc->ioc_init_dmamap,
     sc->ioc_init_mem, ioc_init_size, mrsas_addr_cb,
     &sc->ioc_init_phys_mem, BUS_DMA_NOWAIT)) {
  device_printf(sc->mrsas_dev, "Cannot load ioc init cmd mem\n");
  return (ENOMEM);
 }
 return (0);
}
