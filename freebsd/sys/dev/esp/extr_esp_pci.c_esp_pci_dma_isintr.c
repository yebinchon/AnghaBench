
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncr53c9x_softc {int dummy; } ;
struct esp_pci_softc {int dummy; } ;


 int NCRSTAT_INT ;
 int NCR_STAT ;
 int READ_ESPREG (struct esp_pci_softc*,int ) ;

__attribute__((used)) static int
esp_pci_dma_isintr(struct ncr53c9x_softc *sc)
{
 struct esp_pci_softc *esc = (struct esp_pci_softc *)sc;

 return (READ_ESPREG(esc, NCR_STAT) & NCRSTAT_INT) != 0;
}
