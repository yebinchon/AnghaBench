
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct iwm_softc {int sc_dev; int sc_dmat; int * sc_ih; int * sc_irq; int * sc_mem; int sc_sh; int sc_st; } ;
typedef int reg ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int PCIM_STATUS_INTxSTATE ;
 int PCIR_BAR (int ) ;
 int PCIR_STATUS ;
 int PCI_CFG_RETRY_TIMEOUT ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_get_dma_tag (int ) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct iwm_softc*,int **) ;
 struct iwm_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int iwm_intr ;
 scalar_t__ pci_alloc_msi (int ,int*) ;
 int pci_enable_busmaster (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
iwm_pci_attach(device_t dev)
{
 struct iwm_softc *sc;
 int count, error, rid;
 uint16_t reg;

 sc = device_get_softc(dev);



 pci_write_config(dev, PCI_CFG_RETRY_TIMEOUT, 0x00, 1);


 pci_enable_busmaster(dev);
 reg = pci_read_config(dev, PCIR_STATUS, sizeof(reg));

 if (reg & PCIM_STATUS_INTxSTATE) {
  reg &= ~PCIM_STATUS_INTxSTATE;
 }
 pci_write_config(dev, PCIR_STATUS, reg, sizeof(reg));

 rid = PCIR_BAR(0);
 sc->sc_mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->sc_mem == ((void*)0)) {
  device_printf(sc->sc_dev, "can't map mem space\n");
  return (ENXIO);
 }
 sc->sc_st = rman_get_bustag(sc->sc_mem);
 sc->sc_sh = rman_get_bushandle(sc->sc_mem);


 count = 1;
 rid = 0;
 if (pci_alloc_msi(dev, &count) == 0)
  rid = 1;
 sc->sc_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid, RF_ACTIVE |
     (rid != 0 ? 0 : RF_SHAREABLE));
 if (sc->sc_irq == ((void*)0)) {
  device_printf(dev, "can't map interrupt\n");
   return (ENXIO);
 }
 error = bus_setup_intr(dev, sc->sc_irq, INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), iwm_intr, sc, &sc->sc_ih);
 if (sc->sc_ih == ((void*)0)) {
  device_printf(dev, "can't establish interrupt");
   return (ENXIO);
 }
 sc->sc_dmat = bus_get_dma_tag(sc->sc_dev);

 return (0);
}
