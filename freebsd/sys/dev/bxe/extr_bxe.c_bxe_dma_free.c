
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int dummy; } ;
struct bxe_dma {scalar_t__ size; int * tag; int map; int vaddr; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int DBASSERT (struct bxe_softc*,int ,char*) ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_sync (int *,int ,int) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int ,int ) ;
 int memset (struct bxe_dma*,int ,int) ;

void
bxe_dma_free(struct bxe_softc *sc,
             struct bxe_dma *dma)
{
    if (dma->size > 0) {
        DBASSERT(sc, (dma->tag != ((void*)0)), ("dma tag is NULL"));

        bus_dmamap_sync(dma->tag, dma->map,
                        (BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE));
        bus_dmamap_unload(dma->tag, dma->map);
        bus_dmamem_free(dma->tag, dma->vaddr, dma->map);
        bus_dma_tag_destroy(dma->tag);
    }

    memset(dma, 0, sizeof(*dma));
}
