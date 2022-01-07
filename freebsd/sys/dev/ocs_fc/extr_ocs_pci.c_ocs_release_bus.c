
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct ocs_softc {TYPE_1__* reg; int dev; int dmat; int * irq; scalar_t__ n_vec; } ;
struct TYPE_2__ {int * res; int rid; } ;


 size_t PCI_MAX_BAR ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_dma_tag_destroy (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int ocs_intr_teardown (struct ocs_softc*) ;
 int pci_release_msi (int ) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static void
ocs_release_bus(struct ocs_softc *ocs)
{

 if (((void*)0) != ocs) {
  uint32_t i;

  ocs_intr_teardown(ocs);

  if (ocs->irq) {
   bus_release_resource(ocs->dev, SYS_RES_IRQ,
     rman_get_rid(ocs->irq), ocs->irq);

   if (ocs->n_vec) {
    pci_release_msi(ocs->dev);
    ocs->n_vec = 0;
   }

   ocs->irq = ((void*)0);
  }

  bus_dma_tag_destroy(ocs->dmat);

  for (i = 0; i < PCI_MAX_BAR; i++) {
   if (ocs->reg[i].res) {
    bus_release_resource(ocs->dev, SYS_RES_MEMORY,
      ocs->reg[i].rid,
      ocs->reg[i].res);
   }
  }
 }
}
