
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int parent_dma_tag; } ;
struct bxe_dma {scalar_t__ size; int tag; int map; int vaddr; int msg; struct bxe_softc* sc; } ;
typedef scalar_t__ bus_size_t ;


 int BCM_PAGE_SIZE ;
 int BLOGE (struct bxe_softc*,char*,char const*,int) ;
 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,scalar_t__,int,scalar_t__,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_load (int ,int ,int ,scalar_t__,int ,struct bxe_dma*,int) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int bxe_dma_map_addr ;
 int memset (struct bxe_dma*,int ,int) ;
 int snprintf (int ,int,char*,char const*) ;

int
bxe_dma_alloc(struct bxe_softc *sc,
              bus_size_t size,
              struct bxe_dma *dma,
              const char *msg)
{
    int rc;

    if (dma->size > 0) {
        BLOGE(sc, "dma block '%s' already has size %lu\n", msg,
              (unsigned long)dma->size);
        return (1);
    }

    memset(dma, 0, sizeof(*dma));
    dma->sc = sc;
    dma->size = size;
    snprintf(dma->msg, sizeof(dma->msg), "%s", msg);

    rc = bus_dma_tag_create(sc->parent_dma_tag,
                            BCM_PAGE_SIZE,
                            0,
                            BUS_SPACE_MAXADDR,
                            BUS_SPACE_MAXADDR,
                            ((void*)0),
                            ((void*)0),
                            size,
                            1,
                            size,
                            BUS_DMA_ALLOCNOW,
                            ((void*)0),
                            ((void*)0),
                            &dma->tag);
    if (rc != 0) {
        BLOGE(sc, "Failed to create dma tag for '%s' (%d)\n", msg, rc);
        memset(dma, 0, sizeof(*dma));
        return (1);
    }

    rc = bus_dmamem_alloc(dma->tag,
                          (void **)&dma->vaddr,
                          (BUS_DMA_NOWAIT | BUS_DMA_ZERO),
                          &dma->map);
    if (rc != 0) {
        BLOGE(sc, "Failed to alloc dma mem for '%s' (%d)\n", msg, rc);
        bus_dma_tag_destroy(dma->tag);
        memset(dma, 0, sizeof(*dma));
        return (1);
    }

    rc = bus_dmamap_load(dma->tag,
                         dma->map,
                         dma->vaddr,
                         size,
                         bxe_dma_map_addr,
                         dma,
                         BUS_DMA_NOWAIT);
    if (rc != 0) {
        BLOGE(sc, "Failed to load dma map for '%s' (%d)\n", msg, rc);
        bus_dmamem_free(dma->tag, dma->vaddr, dma->map);
        bus_dma_tag_destroy(dma->tag);
        memset(dma, 0, sizeof(*dma));
        return (1);
    }

    return (0);
}
