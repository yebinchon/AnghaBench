
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_softc {int amr_sgbusaddr; struct amr_sgentry* amr_sgtable; struct amr_sg64entry* amr_sg64table; int amr_sg_dmamap; int amr_sg_dmat; int amr_dev; int amr_parent_dmat; } ;
struct amr_sgentry {int dummy; } ;
struct amr_sg64entry {int dummy; } ;


 scalar_t__ AMR_IS_SG64 (struct amr_softc*) ;
 int AMR_MAXCMD ;
 int AMR_NSEG ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int ENOMEM ;
 int amr_sglist_helper ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,size_t,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,void*,size_t,int ,int*,int ) ;
 int bus_dmamem_alloc (int ,void**,int ,int *) ;
 int debug (int,char*,int) ;
 int debug_called (int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
amr_sglist_map(struct amr_softc *sc)
{
    size_t segsize;
    void *p;
    int error;

    debug_called(1);
    if (AMR_IS_SG64(sc))
 segsize = sizeof(struct amr_sg64entry) * AMR_NSEG * AMR_MAXCMD;
    else
 segsize = sizeof(struct amr_sgentry) * AMR_NSEG * AMR_MAXCMD;

    error = bus_dma_tag_create(sc->amr_parent_dmat,
          512, 0,
          BUS_SPACE_MAXADDR_32BIT,
          BUS_SPACE_MAXADDR,
          ((void*)0), ((void*)0),
          segsize, 1,
          BUS_SPACE_MAXSIZE_32BIT,
          0,
          ((void*)0), ((void*)0),
          &sc->amr_sg_dmat);
    if (error != 0) {
 device_printf(sc->amr_dev, "can't allocate scatter/gather DMA tag\n");
 return(ENOMEM);
    }
retry:
    error = bus_dmamem_alloc(sc->amr_sg_dmat, (void **)&p, BUS_DMA_NOWAIT, &sc->amr_sg_dmamap);
    if (error) {
 device_printf(sc->amr_dev, "can't allocate s/g table\n");
 return(ENOMEM);
    }
    bus_dmamap_load(sc->amr_sg_dmat, sc->amr_sg_dmamap, p, segsize, amr_sglist_helper, &sc->amr_sgbusaddr, 0);
    if (sc->amr_sgbusaddr < 0x2000) {
 debug(1, "s/g table too low (0x%x), reallocating\n", sc->amr_sgbusaddr);
 goto retry;
    }

    if (AMR_IS_SG64(sc))
 sc->amr_sg64table = (struct amr_sg64entry *)p;
    sc->amr_sgtable = (struct amr_sgentry *)p;

    return(0);
}
