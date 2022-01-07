
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_controller {int is_resetting; } ;


 int atomic_cmpset_32 (int *,int,int ) ;
 int hz ;
 int nvme_ctrlr_fail (struct nvme_controller*) ;
 int nvme_ctrlr_hw_reset (struct nvme_controller*) ;
 int nvme_ctrlr_start (struct nvme_controller*,int) ;
 int nvme_printf (struct nvme_controller*,char*) ;
 int pause (char*,int) ;

__attribute__((used)) static void
nvme_ctrlr_reset_task(void *arg, int pending)
{
 struct nvme_controller *ctrlr = arg;
 int status;

 nvme_printf(ctrlr, "resetting controller\n");
 status = nvme_ctrlr_hw_reset(ctrlr);
 pause("nvmereset", hz / 10);
 if (status == 0)
  nvme_ctrlr_start(ctrlr, 1);
 else
  nvme_ctrlr_fail(ctrlr);

 atomic_cmpset_32(&ctrlr->is_resetting, 1, 0);
}
