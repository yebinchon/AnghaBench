
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_softc {int allocated_interrupts; int device; TYPE_1__* int_info; } ;
struct TYPE_2__ {int * tag; int * res; scalar_t__ rid; } ;


 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct ntb_softc*,int **) ;
 int device_printf (int ,char*) ;
 int ndev_irq_isr ;

__attribute__((used)) static int
intel_ntb_setup_legacy_interrupt(struct ntb_softc *ntb)
{
 int rc;

 ntb->int_info[0].rid = 0;
 ntb->int_info[0].res = bus_alloc_resource_any(ntb->device, SYS_RES_IRQ,
     &ntb->int_info[0].rid, RF_SHAREABLE|RF_ACTIVE);
 if (ntb->int_info[0].res == ((void*)0)) {
  device_printf(ntb->device, "bus_alloc_resource failed\n");
  return (ENOMEM);
 }

 ntb->int_info[0].tag = ((void*)0);
 ntb->allocated_interrupts = 1;

 rc = bus_setup_intr(ntb->device, ntb->int_info[0].res,
     INTR_MPSAFE | INTR_TYPE_MISC, ((void*)0), ndev_irq_isr,
     ntb, &ntb->int_info[0].tag);
 if (rc != 0) {
  device_printf(ntb->device, "bus_setup_intr failed\n");
  return (ENXIO);
 }

 return (0);
}
