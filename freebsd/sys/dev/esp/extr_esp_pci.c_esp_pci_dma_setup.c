
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncr53c9x_softc {int dummy; } ;
struct esp_pci_softc {size_t sc_dmasize; void** sc_dmaaddr; size_t* sc_dmalen; int sc_datain; int sc_xferdmam; int sc_xferdmat; } ;


 int BUS_DMA_NOWAIT ;
 size_t DMACMD_DIR ;
 size_t DMACMD_IDLE ;
 int DMA_CMD ;
 int DMA_STC ;
 int MDL_SEG_SIZE ;
 int WRITE_DMAREG (struct esp_pci_softc*,int ,size_t) ;
 int bus_dmamap_load (int ,int ,void*,size_t,int ,struct ncr53c9x_softc*,int ) ;
 int esp_pci_xfermap ;
 size_t ulmin (size_t,int ) ;

__attribute__((used)) static int
esp_pci_dma_setup(struct ncr53c9x_softc *sc, void **addr, size_t *len,
    int datain, size_t *dmasize)
{
 struct esp_pci_softc *esc = (struct esp_pci_softc *)sc;
 int error;

 WRITE_DMAREG(esc, DMA_CMD, DMACMD_IDLE | (datain != 0 ? DMACMD_DIR :
     0));

 *dmasize = esc->sc_dmasize = ulmin(*dmasize, MDL_SEG_SIZE);
 esc->sc_dmaaddr = addr;
 esc->sc_dmalen = len;
 esc->sc_datain = datain;




 if (*dmasize == 0)
  return (0);


 WRITE_DMAREG(esc, DMA_STC, *dmasize);






 error = bus_dmamap_load(esc->sc_xferdmat, esc->sc_xferdmam,
     *esc->sc_dmaaddr, *dmasize, esp_pci_xfermap, sc, BUS_DMA_NOWAIT);

 return (error);
}
