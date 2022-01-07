
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct nicvf {TYPE_1__* msix_entries; int dev; scalar_t__ msix_enabled; } ;
struct TYPE_2__ {struct resource* irq_res; int handle; } ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int NICVF_INTR_ID_MISC ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_release_resource (int ,int ,int ,struct resource*) ;
 int bus_setup_intr (int ,struct resource*,int,int *,int ,struct nicvf*,int *) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,int ) ;
 scalar_t__ nicvf_enable_msix (struct nicvf*) ;
 int nicvf_misc_intr_handler ;
 int rman_get_rid (struct resource*) ;

__attribute__((used)) static int
nicvf_allocate_misc_interrupt(struct nicvf *nic)
{
 struct resource *res;
 int irq, rid;
 int ret = 0;


 if (nic->msix_enabled)
  return (0);


 if (nicvf_enable_msix(nic) != 0)
  return (ENXIO);

 irq = NICVF_INTR_ID_MISC;
 rid = irq + 1;
 nic->msix_entries[irq].irq_res = bus_alloc_resource_any(nic->dev,
     SYS_RES_IRQ, &rid, (RF_SHAREABLE | RF_ACTIVE));
 if (nic->msix_entries[irq].irq_res == ((void*)0)) {
  device_printf(nic->dev,
      "Could not allocate Mbox interrupt for VF%d\n",
      device_get_unit(nic->dev));
  return (ENXIO);
 }

 ret = bus_setup_intr(nic->dev, nic->msix_entries[irq].irq_res,
     (INTR_MPSAFE | INTR_TYPE_MISC), ((void*)0), nicvf_misc_intr_handler, nic,
     &nic->msix_entries[irq].handle);
 if (ret != 0) {
  res = nic->msix_entries[irq].irq_res;
  bus_release_resource(nic->dev, SYS_RES_IRQ,
       rman_get_rid(res), res);
  nic->msix_entries[irq].irq_res = ((void*)0);
  return (ret);
 }

 return (0);
}
