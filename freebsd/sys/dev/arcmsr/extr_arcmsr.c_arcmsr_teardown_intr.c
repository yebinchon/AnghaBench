
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int acb_flags; int msix_vectors; int ** ih; int ** irqres; int * irq_id; } ;
typedef int device_t ;


 int ACB_F_MSIX_ENABLED ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static void arcmsr_teardown_intr(device_t dev, struct AdapterControlBlock *acb)
{
 int i;

 if (acb->acb_flags & ACB_F_MSIX_ENABLED) {
  for (i = 0; i < acb->msix_vectors; i++) {
   if (acb->ih[i])
    bus_teardown_intr(dev, acb->irqres[i], acb->ih[i]);
   if (acb->irqres[i] != ((void*)0))
    bus_release_resource(dev, SYS_RES_IRQ,
        acb->irq_id[i], acb->irqres[i]);

   acb->ih[i] = ((void*)0);
  }
  pci_release_msi(dev);
 } else {
  if (acb->ih[0])
   bus_teardown_intr(dev, acb->irqres[0], acb->ih[0]);
  if (acb->irqres[0] != ((void*)0))
   bus_release_resource(dev, SYS_RES_IRQ,
       acb->irq_id[0], acb->irqres[0]);
  acb->ih[0] = ((void*)0);
 }

}
