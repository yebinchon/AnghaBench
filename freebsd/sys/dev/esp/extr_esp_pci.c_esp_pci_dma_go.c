
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncr53c9x_softc {int dummy; } ;
struct esp_pci_softc {int sc_datain; scalar_t__ sc_dmasize; int sc_active; int sc_xferdmam; int sc_xferdmat; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int DMACMD_DIR ;
 int DMACMD_IDLE ;
 int DMACMD_START ;
 int DMA_CMD ;
 int WRITE_DMAREG (struct esp_pci_softc*,int ,int) ;
 int bus_dmamap_sync (int ,int ,int ) ;

__attribute__((used)) static void
esp_pci_dma_go(struct ncr53c9x_softc *sc)
{
 struct esp_pci_softc *esc = (struct esp_pci_softc *)sc;
 int datain;

 datain = esc->sc_datain;


 if (esc->sc_dmasize == 0)
  return;


 bus_dmamap_sync(esc->sc_xferdmat, esc->sc_xferdmam, datain != 0 ?
     BUS_DMASYNC_PREREAD : BUS_DMASYNC_PREWRITE);



 WRITE_DMAREG(esc, DMA_CMD, DMACMD_IDLE |
     (datain != 0 ? DMACMD_DIR : 0));


 WRITE_DMAREG(esc, DMA_CMD, DMACMD_START |
     (datain != 0 ? DMACMD_DIR : 0));

 esc->sc_active = 1;
}
