
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncr53c9x_softc {int dummy; } ;
struct esp_pci_softc {scalar_t__ sc_datain; scalar_t__ sc_active; int sc_xferdmam; int sc_xferdmat; } ;


 int DMACMD_ABORT ;
 int DMACMD_DIR ;
 int DMA_CMD ;
 int WRITE_DMAREG (struct esp_pci_softc*,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;

__attribute__((used)) static void
esp_pci_dma_stop(struct ncr53c9x_softc *sc)
{
 struct esp_pci_softc *esc = (struct esp_pci_softc *)sc;



 WRITE_DMAREG(esc, DMA_CMD,
     DMACMD_ABORT | (esc->sc_datain != 0 ? DMACMD_DIR : 0));
 bus_dmamap_unload(esc->sc_xferdmat, esc->sc_xferdmam);

 esc->sc_active = 0;
}
