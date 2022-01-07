
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrsas_softc {int * ioc_init_tag; int ioc_init_dmamap; int * ioc_init_mem; scalar_t__ ioc_init_phys_mem; } ;


 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

void
mrsas_free_ioc_cmd(struct mrsas_softc *sc)
{
 if (sc->ioc_init_phys_mem)
  bus_dmamap_unload(sc->ioc_init_tag, sc->ioc_init_dmamap);
 if (sc->ioc_init_mem != ((void*)0))
  bus_dmamem_free(sc->ioc_init_tag, sc->ioc_init_mem, sc->ioc_init_dmamap);
 if (sc->ioc_init_tag != ((void*)0))
  bus_dma_tag_destroy(sc->ioc_init_tag);
}
