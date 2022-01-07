
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrsas_softc {int mrsas_dev; int * raidmap_mem; int * raidmap_phys_addr; int max_map_sz; int * raidmap_dmamap; int * raidmap_tag; int mrsas_parent_tag; void** ld_drv_map; int drv_map_sz; } ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENOMEM ;
 int M_MRSAS ;
 int M_NOWAIT ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 scalar_t__ bus_dmamap_load (int ,int ,int ,int ,int ,int *,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bzero (int ,int ) ;
 int device_printf (int ,char*) ;
 int free (void*,int ) ;
 scalar_t__ malloc (int ,int ,int ) ;
 int mrsas_addr_cb ;
 int mrsas_get_map_info (struct mrsas_softc*) ;
 int mrsas_sync_map_info (struct mrsas_softc*) ;

__attribute__((used)) static int
mrsas_setup_raidmap(struct mrsas_softc *sc)
{
 int i;

 for (i = 0; i < 2; i++) {
  sc->ld_drv_map[i] =
      (void *)malloc(sc->drv_map_sz, M_MRSAS, M_NOWAIT);

  if (!sc->ld_drv_map[i]) {
   device_printf(sc->mrsas_dev, "Could not allocate memory for local map");

   if (i == 1)
    free(sc->ld_drv_map[0], M_MRSAS);

   goto ABORT;
  }
 }

 for (int i = 0; i < 2; i++) {
  if (bus_dma_tag_create(sc->mrsas_parent_tag,
      4, 0,
      BUS_SPACE_MAXADDR_32BIT,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      sc->max_map_sz,
      1,
      sc->max_map_sz,
      BUS_DMA_ALLOCNOW,
      ((void*)0), ((void*)0),
      &sc->raidmap_tag[i])) {
   device_printf(sc->mrsas_dev,
       "Cannot allocate raid map tag.\n");
   return (ENOMEM);
  }
  if (bus_dmamem_alloc(sc->raidmap_tag[i],
      (void **)&sc->raidmap_mem[i],
      BUS_DMA_NOWAIT, &sc->raidmap_dmamap[i])) {
   device_printf(sc->mrsas_dev,
       "Cannot allocate raidmap memory.\n");
   return (ENOMEM);
  }
  bzero(sc->raidmap_mem[i], sc->max_map_sz);

  if (bus_dmamap_load(sc->raidmap_tag[i], sc->raidmap_dmamap[i],
      sc->raidmap_mem[i], sc->max_map_sz,
      mrsas_addr_cb, &sc->raidmap_phys_addr[i],
      BUS_DMA_NOWAIT)) {
   device_printf(sc->mrsas_dev, "Cannot load raidmap memory.\n");
   return (ENOMEM);
  }
  if (!sc->raidmap_mem[i]) {
   device_printf(sc->mrsas_dev,
       "Cannot allocate memory for raid map.\n");
   return (ENOMEM);
  }
 }

 if (!mrsas_get_map_info(sc))
  mrsas_sync_map_info(sc);

 return (0);

ABORT:
 return (1);
}
