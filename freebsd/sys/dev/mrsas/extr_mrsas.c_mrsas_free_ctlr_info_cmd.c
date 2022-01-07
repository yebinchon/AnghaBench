
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrsas_softc {int * ctlr_info_tag; int ctlr_info_dmamap; int * ctlr_info_mem; scalar_t__ ctlr_info_phys_addr; } ;


 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

void
mrsas_free_ctlr_info_cmd(struct mrsas_softc *sc)
{
 if (sc->ctlr_info_phys_addr)
  bus_dmamap_unload(sc->ctlr_info_tag, sc->ctlr_info_dmamap);
 if (sc->ctlr_info_mem != ((void*)0))
  bus_dmamem_free(sc->ctlr_info_tag, sc->ctlr_info_mem, sc->ctlr_info_dmamap);
 if (sc->ctlr_info_tag != ((void*)0))
  bus_dma_tag_destroy(sc->ctlr_info_tag);
}
