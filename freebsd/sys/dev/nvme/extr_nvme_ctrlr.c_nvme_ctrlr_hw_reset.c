
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_controller {int dummy; } ;


 int DELAY (int) ;
 int nvme_ctrlr_disable (struct nvme_controller*) ;
 int nvme_ctrlr_disable_qpairs (struct nvme_controller*) ;
 int nvme_ctrlr_enable (struct nvme_controller*) ;

int
nvme_ctrlr_hw_reset(struct nvme_controller *ctrlr)
{
 int err;

 nvme_ctrlr_disable_qpairs(ctrlr);

 DELAY(100*1000);

 err = nvme_ctrlr_disable(ctrlr);
 if (err != 0)
  return err;
 return (nvme_ctrlr_enable(ctrlr));
}
