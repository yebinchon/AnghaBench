
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct nicvf {int num_vec; TYPE_1__* msix_entries; int dev; } ;
struct TYPE_2__ {struct resource* irq_res; int * handle; } ;


 int KASSERT (int,char*) ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,struct resource*) ;
 int bus_teardown_intr (int ,struct resource*,int *) ;
 int nicvf_disable_msix (struct nicvf*) ;
 int rman_get_rid (struct resource*) ;

__attribute__((used)) static void
nicvf_release_all_interrupts(struct nicvf *nic)
{
 struct resource *res;
 int irq;
 int err;


 for (irq = 0; irq < nic->num_vec; irq++) {
  res = nic->msix_entries[irq].irq_res;
  if (res == ((void*)0))
   continue;

  if (nic->msix_entries[irq].handle != ((void*)0)) {
   err = bus_teardown_intr(nic->dev,
       nic->msix_entries[irq].irq_res,
       nic->msix_entries[irq].handle);
   KASSERT(err == 0,
       ("ERROR: Unable to teardown interrupt %d", irq));
   nic->msix_entries[irq].handle = ((void*)0);
  }

  bus_release_resource(nic->dev, SYS_RES_IRQ,
       rman_get_rid(res), nic->msix_entries[irq].irq_res);
  nic->msix_entries[irq].irq_res = ((void*)0);
 }

 nicvf_disable_msix(nic);
}
