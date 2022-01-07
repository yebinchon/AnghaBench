
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrsas_tmp_dcmd {int tmp_dcmd_mem; int tmp_dcmd_phys_addr; int tmp_dcmd_dmamap; int tmp_dcmd_tag; } ;
struct mrsas_softc {int mrsas_dev; int mrsas_parent_tag; } ;


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
mrsas_alloc_tmp_dcmd(struct mrsas_softc *sc,
    struct mrsas_tmp_dcmd *tcmd, int size)
{
 if (bus_dma_tag_create(sc->mrsas_parent_tag,
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     size,
     1,
     size,
     BUS_DMA_ALLOCNOW,
     ((void*)0), ((void*)0),
     &tcmd->tmp_dcmd_tag)) {
  device_printf(sc->mrsas_dev, "Cannot allocate tmp dcmd tag\n");
  return (ENOMEM);
 }
 if (bus_dmamem_alloc(tcmd->tmp_dcmd_tag, (void **)&tcmd->tmp_dcmd_mem,
     BUS_DMA_NOWAIT, &tcmd->tmp_dcmd_dmamap)) {
  device_printf(sc->mrsas_dev, "Cannot allocate tmp dcmd mem\n");
  return (ENOMEM);
 }
 if (bus_dmamap_load(tcmd->tmp_dcmd_tag, tcmd->tmp_dcmd_dmamap,
     tcmd->tmp_dcmd_mem, size, mrsas_addr_cb,
     &tcmd->tmp_dcmd_phys_addr, BUS_DMA_NOWAIT)) {
  device_printf(sc->mrsas_dev, "Cannot load tmp dcmd mem\n");
  return (ENOMEM);
 }
 memset(tcmd->tmp_dcmd_mem, 0, size);
 return (0);
}
