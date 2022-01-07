
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ioat_softc {int rid; int * tag; int * res; int device; } ;
typedef scalar_t__ boolean_t ;


 int ENOMEM ;
 scalar_t__ FALSE ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int IOAT_INTRCTRL_MASTER_INT_EN ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 scalar_t__ TRUE ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct ioat_softc*,int **) ;
 int g_force_legacy_interrupts ;
 int ioat_interrupt_handler ;
 int ioat_log_message (int ,char*) ;
 int ioat_write_intrctrl (struct ioat_softc*,int ) ;
 int pci_alloc_msix (int ,int*) ;
 int pci_msix_count (int ) ;

__attribute__((used)) static int
ioat_setup_intr(struct ioat_softc *ioat)
{
 uint32_t num_vectors;
 int error;
 boolean_t use_msix;
 boolean_t force_legacy_interrupts;

 use_msix = FALSE;
 force_legacy_interrupts = FALSE;

 if (!g_force_legacy_interrupts && pci_msix_count(ioat->device) >= 1) {
  num_vectors = 1;
  pci_alloc_msix(ioat->device, &num_vectors);
  if (num_vectors == 1)
   use_msix = TRUE;
 }

 if (use_msix) {
  ioat->rid = 1;
  ioat->res = bus_alloc_resource_any(ioat->device, SYS_RES_IRQ,
      &ioat->rid, RF_ACTIVE);
 } else {
  ioat->rid = 0;
  ioat->res = bus_alloc_resource_any(ioat->device, SYS_RES_IRQ,
      &ioat->rid, RF_SHAREABLE | RF_ACTIVE);
 }
 if (ioat->res == ((void*)0)) {
  ioat_log_message(0, "bus_alloc_resource failed\n");
  return (ENOMEM);
 }

 ioat->tag = ((void*)0);
 error = bus_setup_intr(ioat->device, ioat->res, INTR_MPSAFE |
     INTR_TYPE_MISC, ((void*)0), ioat_interrupt_handler, ioat, &ioat->tag);
 if (error != 0) {
  ioat_log_message(0, "bus_setup_intr failed\n");
  return (error);
 }

 ioat_write_intrctrl(ioat, IOAT_INTRCTRL_MASTER_INT_EN);
 return (0);
}
