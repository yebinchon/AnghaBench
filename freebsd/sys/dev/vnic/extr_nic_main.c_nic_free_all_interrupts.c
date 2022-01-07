
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nicpf {int num_vec; TYPE_1__* msix_entries; int dev; } ;
struct TYPE_2__ {int * irq_res; int * handle; } ;


 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;

__attribute__((used)) static void
nic_free_all_interrupts(struct nicpf *nic)
{
 int irq;

 for (irq = 0; irq < nic->num_vec; irq++) {
  if (nic->msix_entries[irq].irq_res == ((void*)0))
   continue;
  if (nic->msix_entries[irq].handle != ((void*)0)) {
   bus_teardown_intr(nic->dev,
       nic->msix_entries[irq].irq_res,
       nic->msix_entries[irq].handle);
  }

  bus_release_resource(nic->dev, SYS_RES_IRQ, irq + 1,
      nic->msix_entries[irq].irq_res);
 }
}
