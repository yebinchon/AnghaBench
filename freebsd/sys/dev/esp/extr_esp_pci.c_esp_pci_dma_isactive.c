
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncr53c9x_softc {int dummy; } ;
struct esp_pci_softc {int dummy; } ;


 int DMACMD_CMD ;
 int DMACMD_IDLE ;
 int DMA_CMD ;
 int READ_DMAREG (struct esp_pci_softc*,int ) ;

__attribute__((used)) static int
esp_pci_dma_isactive(struct ncr53c9x_softc *sc)
{
 struct esp_pci_softc *esc = (struct esp_pci_softc *)sc;


 if ((READ_DMAREG(esc, DMA_CMD) & DMACMD_CMD) != DMACMD_IDLE)
  return (1);

 return (0);
}
