
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int msix_vectors; int* irq_id; int pci_dev; int acb_flags; int * ih; int ** irqres; } ;


 int ACB_F_MSIX_ENABLED ;
 int FALSE ;
 int INTR_MPSAFE ;
 int INTR_TYPE_CAM ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int TRUE ;
 int arcmsr_intr_handler ;
 int arcmsr_teardown_intr (int ,struct AdapterControlBlock*) ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,struct AdapterControlBlock*,int *) ;
 int printf (char*) ;

__attribute__((used)) static int arcmsr_setup_msix(struct AdapterControlBlock *acb)
{
 int i;

 for (i = 0; i < acb->msix_vectors; i++) {
  acb->irq_id[i] = 1 + i;
  acb->irqres[i] = bus_alloc_resource_any(acb->pci_dev,
      SYS_RES_IRQ, &acb->irq_id[i], RF_ACTIVE);
  if (acb->irqres[i] == ((void*)0)) {
   printf("arcmsr: Can't allocate MSI-X resource\n");
   goto irq_alloc_failed;
  }
  if (bus_setup_intr(acb->pci_dev, acb->irqres[i],
      INTR_MPSAFE | INTR_TYPE_CAM, ((void*)0), arcmsr_intr_handler,
      acb, &acb->ih[i])) {
   printf("arcmsr: Cannot set up MSI-X interrupt handler\n");
   goto irq_alloc_failed;
  }
 }
 printf("arcmsr: MSI-X INT enabled\n");
 acb->acb_flags |= ACB_F_MSIX_ENABLED;
 return TRUE;

irq_alloc_failed:
 arcmsr_teardown_intr(acb->pci_dev, acb);
 return FALSE;
}
