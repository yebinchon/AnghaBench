
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrsas_softc {int * el_info_tag; int el_info_dmamap; int * el_info_mem; scalar_t__ el_info_phys_addr; } ;


 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

void
mrsas_free_evt_log_info_cmd(struct mrsas_softc *sc)
{
 if (sc->el_info_phys_addr)
  bus_dmamap_unload(sc->el_info_tag, sc->el_info_dmamap);
 if (sc->el_info_mem != ((void*)0))
  bus_dmamem_free(sc->el_info_tag, sc->el_info_mem, sc->el_info_dmamap);
 if (sc->el_info_tag != ((void*)0))
  bus_dma_tag_destroy(sc->el_info_tag);
}
