
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int (* enable_interrupt ) (struct octeon_device*,int ) ;int (* disable_interrupt ) (struct octeon_device*,int ) ;} ;
struct octeon_device {int num_msix_irqs; TYPE_2__ fn_list; int device; int * msix_res; int aux_vector; int * tag; TYPE_1__* ioq_vector; scalar_t__ msix_on; } ;
struct TYPE_3__ {int * msix_res; int vector; int * tag; } ;


 scalar_t__ LIO_CN23XX_PF (struct octeon_device*) ;
 int OCTEON_ALL_INTR ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int lio_dev_info (struct octeon_device*,char*) ;
 scalar_t__ lio_setup_interrupt (struct octeon_device*,int ) ;
 int pci_release_msi (int ) ;
 int stub1 (struct octeon_device*,int ) ;
 int stub2 (struct octeon_device*,int ) ;

__attribute__((used)) static int
lio_irq_reallocate_irqs(struct octeon_device *oct, uint32_t num_ioqs)
{
 int i, num_msix_irqs = 0;

 if (!oct->msix_on)
  return (0);





 oct->fn_list.disable_interrupt(oct, OCTEON_ALL_INTR);

 if (oct->msix_on) {
  if (LIO_CN23XX_PF(oct))
   num_msix_irqs = oct->num_msix_irqs - 1;

  for (i = 0; i < num_msix_irqs; i++) {
   if (oct->ioq_vector[i].tag != ((void*)0)) {
    bus_teardown_intr(oct->device,
        oct->ioq_vector[i].msix_res,
        oct->ioq_vector[i].tag);
    oct->ioq_vector[i].tag = ((void*)0);
   }

   if (oct->ioq_vector[i].msix_res != ((void*)0)) {
    bus_release_resource(oct->device, SYS_RES_IRQ,
           oct->ioq_vector[i].vector,
       oct->ioq_vector[i].msix_res);
    oct->ioq_vector[i].msix_res = ((void*)0);
   }
  }


  if (oct->tag != ((void*)0)) {
   bus_teardown_intr(oct->device, oct->msix_res, oct->tag);
   oct->tag = ((void*)0);
  }

  if (oct->msix_res != ((void*)0)) {
   bus_release_resource(oct->device, SYS_RES_IRQ,
          oct->aux_vector,
          oct->msix_res);
   oct->msix_res = ((void*)0);
  }

  pci_release_msi(oct->device);

 }

 if (lio_setup_interrupt(oct, num_ioqs)) {
  lio_dev_info(oct, "Setup interuupt failed\n");
  return (1);
 }


 oct->fn_list.enable_interrupt(oct, OCTEON_ALL_INTR);

 return (0);
}
