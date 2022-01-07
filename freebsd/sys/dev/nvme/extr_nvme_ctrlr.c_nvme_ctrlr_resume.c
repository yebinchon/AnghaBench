
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_controller {int is_resetting; scalar_t__ is_failed; } ;


 int atomic_cmpset_32 (int *,int,int ) ;
 int nvme_ctrlr_fail (struct nvme_controller*) ;
 scalar_t__ nvme_ctrlr_hw_reset (struct nvme_controller*) ;
 int nvme_ctrlr_start (struct nvme_controller*,int) ;
 int nvme_printf (struct nvme_controller*,char*) ;

int
nvme_ctrlr_resume(struct nvme_controller *ctrlr)
{




 if (ctrlr->is_failed)
  return (0);





 if (nvme_ctrlr_hw_reset(ctrlr) != 0)
  goto fail;
 if (nvme_ctrlr_hw_reset(ctrlr) != 0)
  goto fail;






 nvme_ctrlr_start(ctrlr, 1);
 atomic_cmpset_32(&ctrlr->is_resetting, 1, 0);

 return (0);
fail:





 nvme_printf(ctrlr, "Failed to reset on resume, failing.\n");
 nvme_ctrlr_fail(ctrlr);
 atomic_cmpset_32(&ctrlr->is_resetting, 1, 0);
 return (0);
}
