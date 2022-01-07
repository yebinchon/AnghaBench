
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vec; int name; struct ocs_softc* softc; } ;
struct ocs_softc {int n_vec; int irqid; TYPE_1__ intr_ctx; int dev; int * irq; } ;
typedef int int32_t ;


 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,int*,int) ;
 char* device_get_nameunit (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ pci_alloc_msi (int ,int*) ;
 scalar_t__ pci_alloc_msix (int ,int*) ;
 int snprintf (int ,int,char*,char*,int) ;

__attribute__((used)) static int32_t
ocs_intr_alloc(struct ocs_softc *ocs)
{

 ocs->n_vec = 1;
 if (pci_alloc_msix(ocs->dev, &ocs->n_vec)) {
  device_printf(ocs->dev, "MSI-X allocation failed\n");
  if (pci_alloc_msi(ocs->dev, &ocs->n_vec)) {
   device_printf(ocs->dev, "MSI allocation failed \n");
   ocs->irqid = 0;
   ocs->n_vec = 0;
  } else
   ocs->irqid = 1;
 } else {
  ocs->irqid = 1;
 }

 ocs->irq = bus_alloc_resource_any(ocs->dev, SYS_RES_IRQ, &ocs->irqid,
   RF_ACTIVE | RF_SHAREABLE);
 if (((void*)0) == ocs->irq) {
  device_printf(ocs->dev, "could not allocate interrupt\n");
  return -1;
 }

 ocs->intr_ctx.vec = 0;
 ocs->intr_ctx.softc = ocs;
 snprintf(ocs->intr_ctx.name, sizeof(ocs->intr_ctx.name),
   "%s_intr_%d",
   device_get_nameunit(ocs->dev),
   ocs->intr_ctx.vec);

 return 0;
}
