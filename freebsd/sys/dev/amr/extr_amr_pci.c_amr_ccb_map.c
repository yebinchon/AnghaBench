
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union amr_ccb {int dummy; } amr_ccb ;
struct amr_softc {int amr_ccb; int amr_ccb_busaddr; int amr_ccb_dmamap; int amr_ccb_dmat; int amr_dev; int amr_parent_dmat; } ;


 int AMR_MAXCMD ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENOMEM ;
 int amr_sglist_helper ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,int *,int ) ;
 int bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bzero (int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
amr_ccb_map(struct amr_softc *sc)
{
    int ccbsize, error;





    ccbsize = sizeof(union amr_ccb) * AMR_MAXCMD;
    error = bus_dma_tag_create(sc->amr_parent_dmat,
    128, 0,
    BUS_SPACE_MAXADDR_32BIT,
    BUS_SPACE_MAXADDR,
    ((void*)0), ((void*)0),
    ccbsize,
    1,
    ccbsize,
    0,
    ((void*)0), ((void*)0),
    &sc->amr_ccb_dmat);
    if (error != 0) {
 device_printf(sc->amr_dev, "can't allocate ccb tag\n");
 return (ENOMEM);
    }

    error = bus_dmamem_alloc(sc->amr_ccb_dmat, (void **)&sc->amr_ccb,
        BUS_DMA_NOWAIT, &sc->amr_ccb_dmamap);
    if (error) {
 device_printf(sc->amr_dev, "can't allocate ccb memory\n");
 return (ENOMEM);
    }
    bus_dmamap_load(sc->amr_ccb_dmat, sc->amr_ccb_dmamap, sc->amr_ccb,
      ccbsize, amr_sglist_helper, &sc->amr_ccb_busaddr, 0);
    bzero(sc->amr_ccb, ccbsize);

    return (0);
}
