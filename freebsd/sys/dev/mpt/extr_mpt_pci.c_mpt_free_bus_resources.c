
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int * pci_reg; int dev; int * pci_pio_reg; int * pci_irq; int * ih; } ;


 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int pci_release_msi (int ) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static void
mpt_free_bus_resources(struct mpt_softc *mpt)
{

 if (mpt->ih) {
  bus_teardown_intr(mpt->dev, mpt->pci_irq, mpt->ih);
  mpt->ih = ((void*)0);
 }

 if (mpt->pci_irq) {
  bus_release_resource(mpt->dev, SYS_RES_IRQ,
      rman_get_rid(mpt->pci_irq), mpt->pci_irq);
  pci_release_msi(mpt->dev);
  mpt->pci_irq = ((void*)0);
 }

 if (mpt->pci_pio_reg) {
  bus_release_resource(mpt->dev, SYS_RES_IOPORT,
      rman_get_rid(mpt->pci_pio_reg), mpt->pci_pio_reg);
  mpt->pci_pio_reg = ((void*)0);
 }

 if (mpt->pci_reg) {
  bus_release_resource(mpt->dev, SYS_RES_MEMORY,
      rman_get_rid(mpt->pci_reg), mpt->pci_reg);
  mpt->pci_reg = ((void*)0);
 }
}
