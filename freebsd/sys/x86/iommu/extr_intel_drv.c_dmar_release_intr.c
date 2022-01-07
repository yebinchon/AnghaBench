
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {struct dmar_msi_data* intrs; } ;
struct dmar_msi_data {int irq; int irq_rid; int irq_res; int intr_handle; } ;
typedef int device_t ;


 int PCIB_RELEASE_MSIX (int ,int ,int) ;
 int SYS_RES_IRQ ;
 int bus_delete_resource (int ,int ,int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static void
dmar_release_intr(device_t dev, struct dmar_unit *unit, int idx)
{
 struct dmar_msi_data *dmd;

 dmd = &unit->intrs[idx];
 if (dmd->irq == -1)
  return;
 bus_teardown_intr(dev, dmd->irq_res, dmd->intr_handle);
 bus_release_resource(dev, SYS_RES_IRQ, dmd->irq_rid, dmd->irq_res);
 bus_delete_resource(dev, SYS_RES_IRQ, dmd->irq_rid);
 PCIB_RELEASE_MSIX(device_get_parent(device_get_parent(dev)),
     dev, dmd->irq);
 dmd->irq = -1;
}
