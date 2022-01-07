
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mly_softc {int mly_sg_table; int mly_sg_dmamap; int mly_sg_dmat; int mly_parent_dmat; } ;
struct mly_sg_entry {int dummy; } ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int ENOMEM ;
 int MLY_MAX_COMMANDS ;
 int MLY_MAX_SGENTRIES ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,size_t,int,int ,int ,int *,int *,int *) ;
 scalar_t__ bus_dmamap_load (int ,int ,int ,size_t,int ,struct mly_softc*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int debug_called (int) ;
 int mly_printf (struct mly_softc*,char*) ;
 int mly_sg_map_helper ;

__attribute__((used)) static int
mly_sg_map(struct mly_softc *sc)
{
    size_t segsize;

    debug_called(1);





    segsize = sizeof(struct mly_sg_entry) * MLY_MAX_COMMANDS *MLY_MAX_SGENTRIES;
    if (bus_dma_tag_create(sc->mly_parent_dmat,
      1, 0,
      BUS_SPACE_MAXADDR,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      segsize, 1,
      BUS_SPACE_MAXSIZE_32BIT,
      BUS_DMA_ALLOCNOW,
      ((void*)0), ((void*)0),
      &sc->mly_sg_dmat)) {
 mly_printf(sc, "can't allocate scatter/gather DMA tag\n");
 return(ENOMEM);
    }
    if (bus_dmamem_alloc(sc->mly_sg_dmat, (void **)&sc->mly_sg_table,
    BUS_DMA_NOWAIT, &sc->mly_sg_dmamap)) {
 mly_printf(sc, "can't allocate s/g table\n");
 return(ENOMEM);
    }
    if (bus_dmamap_load(sc->mly_sg_dmat, sc->mly_sg_dmamap, sc->mly_sg_table,
   segsize, mly_sg_map_helper, sc, BUS_DMA_NOWAIT) != 0)
 return (ENOMEM);
    return(0);
}
