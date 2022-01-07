
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {int fw_flags; int * fw_virtaddr; scalar_t__ fw_physaddr; int * fw_map; int * fw_dmat; scalar_t__ fw_dma_size; } ;


 int IWI_FW_HAVE_DMAT ;
 int IWI_FW_HAVE_MAP ;
 int IWI_FW_HAVE_PHY ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_unload (int *,int *) ;
 int bus_dmamem_free (int *,int *,int *) ;

__attribute__((used)) static void
iwi_release_fw_dma(struct iwi_softc *sc)
{
 if (sc->fw_flags & IWI_FW_HAVE_PHY)
  bus_dmamap_unload(sc->fw_dmat, sc->fw_map);
 if (sc->fw_flags & IWI_FW_HAVE_MAP)
  bus_dmamem_free(sc->fw_dmat, sc->fw_virtaddr, sc->fw_map);
 if (sc->fw_flags & IWI_FW_HAVE_DMAT)
  bus_dma_tag_destroy(sc->fw_dmat);

 sc->fw_flags = 0;
 sc->fw_dma_size = 0;
 sc->fw_dmat = ((void*)0);
 sc->fw_map = ((void*)0);
 sc->fw_physaddr = 0;
 sc->fw_virtaddr = ((void*)0);
}
