
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {int fw_dma_size; int fw_flags; int sc_dev; int fw_physaddr; int fw_virtaddr; int fw_map; int fw_dmat; } ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int IWI_FW_HAVE_DMAT ;
 int IWI_FW_HAVE_MAP ;
 int IWI_FW_HAVE_PHY ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 scalar_t__ bus_dmamap_load (int ,int ,int ,int,int ,int *,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,int *,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 int iwi_dma_map_addr ;
 int iwi_release_fw_dma (struct iwi_softc*) ;

__attribute__((used)) static int
iwi_init_fw_dma(struct iwi_softc *sc, int size)
{
 if (sc->fw_dma_size >= size)
  return 0;
 if (bus_dma_tag_create(bus_get_dma_tag(sc->sc_dev), 4, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     size, 1, size, 0, ((void*)0), ((void*)0), &sc->fw_dmat) != 0) {
  device_printf(sc->sc_dev,
      "could not create firmware DMA tag\n");
  goto error;
 }
 sc->fw_flags |= IWI_FW_HAVE_DMAT;
 if (bus_dmamem_alloc(sc->fw_dmat, &sc->fw_virtaddr, 0,
     &sc->fw_map) != 0) {
  device_printf(sc->sc_dev,
      "could not allocate firmware DMA memory\n");
  goto error;
 }
 sc->fw_flags |= IWI_FW_HAVE_MAP;
 if (bus_dmamap_load(sc->fw_dmat, sc->fw_map, sc->fw_virtaddr,
     size, iwi_dma_map_addr, &sc->fw_physaddr, 0) != 0) {
  device_printf(sc->sc_dev, "could not load firmware DMA map\n");
  goto error;
 }
 sc->fw_flags |= IWI_FW_HAVE_PHY;
 sc->fw_dma_size = size;
 return 0;

error:
 iwi_release_fw_dma(sc);
 return 1;
}
