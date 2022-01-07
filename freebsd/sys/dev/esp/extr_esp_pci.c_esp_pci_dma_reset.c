
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncr53c9x_softc {int dummy; } ;
struct esp_pci_softc {scalar_t__ sc_active; } ;


 int DMACMD_IDLE ;
 int DMA_CMD ;
 int WRITE_DMAREG (struct esp_pci_softc*,int ,int ) ;

__attribute__((used)) static void
esp_pci_dma_reset(struct ncr53c9x_softc *sc)
{
 struct esp_pci_softc *esc = (struct esp_pci_softc *)sc;

 WRITE_DMAREG(esc, DMA_CMD, DMACMD_IDLE);

 esc->sc_active = 0;
}
