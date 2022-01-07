
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* rm_descr; void* rm_type; } ;
struct ar71xx_pci_softc {int sc_ih; int * sc_irq; TYPE_1__ sc_irq_rman; TYPE_1__ sc_mem_rman; } ;
typedef int device_t ;


 scalar_t__ AR71XX_PCI_IRQ_END ;
 scalar_t__ AR71XX_PCI_IRQ_START ;
 scalar_t__ AR71XX_PCI_MEM_BASE ;
 scalar_t__ AR71XX_PCI_MEM_SIZE ;
 int AR724X_PCI_INTR_MASK ;
 int AR724X_PCI_INTR_STATUS ;
 int AR724X_RESET_PCIE ;
 int AR724X_RESET_PCIE_PHY ;
 int AR724X_RESET_PCIE_PHY_SERIAL ;
 int ATH_WRITE_REG (int ,int ) ;
 int DELAY (int) ;
 int ENXIO ;
 int INTR_TYPE_MISC ;
 int PCIM_CMD_BACKTOBACK ;
 int PCIM_CMD_BUSMASTEREN ;
 int PCIM_CMD_MEMEN ;
 int PCIM_CMD_MWRICEN ;
 int PCIM_CMD_PERRESPEN ;
 int PCIM_CMD_SERRESPEN ;
 int PCIR_COMMAND ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 void* RMAN_ARRAY ;
 int SYS_RES_IRQ ;
 int ar71xx_device_start (int ) ;
 int ar71xx_device_stop (int ) ;
 int ar724x_pci_intr ;
 scalar_t__ ar724x_pci_setup (int ) ;
 int ar724x_pci_slot_fixup (int ) ;
 int ar724x_pci_write_config (int ,int ,int ,int ,int ,int,int) ;
 int * bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_generic_attach (int ) ;
 scalar_t__ bus_setup_intr (int ,int *,int ,int ,int *,struct ar71xx_pci_softc*,int *) ;
 int device_add_child (int ,char*,int) ;
 struct ar71xx_pci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int panic (char*) ;
 scalar_t__ rman_init (TYPE_1__*) ;
 scalar_t__ rman_manage_region (TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
ar724x_pci_attach(device_t dev)
{
 struct ar71xx_pci_softc *sc = device_get_softc(dev);
 int rid = 0;

 sc->sc_mem_rman.rm_type = RMAN_ARRAY;
 sc->sc_mem_rman.rm_descr = "ar724x PCI memory window";
 if (rman_init(&sc->sc_mem_rman) != 0 ||
     rman_manage_region(&sc->sc_mem_rman, AR71XX_PCI_MEM_BASE,
  AR71XX_PCI_MEM_BASE + AR71XX_PCI_MEM_SIZE - 1) != 0) {
  panic("ar724x_pci_attach: failed to set up I/O rman");
 }

 sc->sc_irq_rman.rm_type = RMAN_ARRAY;
 sc->sc_irq_rman.rm_descr = "ar724x PCI IRQs";
 if (rman_init(&sc->sc_irq_rman) != 0 ||
     rman_manage_region(&sc->sc_irq_rman, AR71XX_PCI_IRQ_START,
         AR71XX_PCI_IRQ_END) != 0)
  panic("ar724x_pci_attach: failed to set up IRQ rman");


 ATH_WRITE_REG(AR724X_PCI_INTR_STATUS, 0);
 ATH_WRITE_REG(AR724X_PCI_INTR_MASK, 0);


 if ((sc->sc_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE)) == ((void*)0)) {
  device_printf(dev, "unable to allocate IRQ resource\n");
  return (ENXIO);
 }

 if ((bus_setup_intr(dev, sc->sc_irq, INTR_TYPE_MISC,
       ar724x_pci_intr, ((void*)0), sc, &sc->sc_ih))) {
  device_printf(dev,
      "WARNING: unable to register interrupt handler\n");
  return (ENXIO);
 }


 ar71xx_device_stop(AR724X_RESET_PCIE);
 ar71xx_device_stop(AR724X_RESET_PCIE_PHY);
 ar71xx_device_stop(AR724X_RESET_PCIE_PHY_SERIAL);
 DELAY(100);

 ar71xx_device_start(AR724X_RESET_PCIE_PHY_SERIAL);
 DELAY(100);
 ar71xx_device_start(AR724X_RESET_PCIE_PHY);
 ar71xx_device_start(AR724X_RESET_PCIE);

 if (ar724x_pci_setup(dev))
  return (ENXIO);






 ar724x_pci_write_config(dev, 0, 0, 0, PCIR_COMMAND,
            PCIM_CMD_BUSMASTEREN | PCIM_CMD_MEMEN
     | PCIM_CMD_SERRESPEN | PCIM_CMD_BACKTOBACK
     | PCIM_CMD_PERRESPEN | PCIM_CMD_MWRICEN, 2);

 device_add_child(dev, "pci", -1);
 return (bus_generic_attach(dev));
}
