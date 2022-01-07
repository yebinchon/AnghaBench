
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocs_softc {scalar_t__ n_vec; int dev; int tag; int intr_ctx; int irq; } ;
typedef int int32_t ;
typedef int driver_filter_t ;


 int INTR_MPSAFE ;
 int INTR_TYPE_CAM ;
 scalar_t__ bus_setup_intr (int ,int ,int,int *,int ,int *,int *) ;
 int device_printf (int ,char*) ;
 int ocs_pci_intr ;
 int * ocs_pci_intx_filter ;

__attribute__((used)) static int32_t
ocs_intr_setup(struct ocs_softc *ocs)
{
 driver_filter_t *filter = ((void*)0);

 if (0 == ocs->n_vec) {
  filter = ocs_pci_intx_filter;
 }

 if (bus_setup_intr(ocs->dev, ocs->irq, INTR_MPSAFE | INTR_TYPE_CAM,
    filter, ocs_pci_intr, &ocs->intr_ctx,
    &ocs->tag)) {
  device_printf(ocs->dev, "could not initialize interrupt\n");
  return -1;
 }

 return 0;
}
