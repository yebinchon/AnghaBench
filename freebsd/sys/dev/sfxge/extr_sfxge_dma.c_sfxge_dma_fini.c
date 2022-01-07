
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {int parent_dma_tag; } ;


 int bus_dma_tag_destroy (int ) ;

void
sfxge_dma_fini(struct sfxge_softc *sc)
{

 bus_dma_tag_destroy(sc->parent_dma_tag);
}
