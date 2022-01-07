
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_controller {int dummy; } ;


 int intmc ;
 int intms ;
 int nvme_ctrlr_poll (struct nvme_controller*) ;
 int nvme_mmio_write_4 (struct nvme_controller*,int ,int) ;

void
nvme_ctrlr_intx_handler(void *arg)
{
 struct nvme_controller *ctrlr = arg;

 nvme_mmio_write_4(ctrlr, intms, 1);
 nvme_ctrlr_poll(ctrlr);
 nvme_mmio_write_4(ctrlr, intmc, 1);
}
