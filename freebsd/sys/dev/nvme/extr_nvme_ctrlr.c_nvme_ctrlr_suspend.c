
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_controller {int is_resetting; scalar_t__ is_failed; } ;


 int DELAY (int) ;
 int EWOULDBLOCK ;
 scalar_t__ atomic_cmpset_32 (int *,int ,int) ;
 int hz ;
 int nvme_ctrlr_delete_qpairs (struct nvme_controller*) ;
 int nvme_ctrlr_disable_qpairs (struct nvme_controller*) ;
 int nvme_ctrlr_shutdown (struct nvme_controller*) ;
 int nvme_printf (struct nvme_controller*,char*) ;
 int pause (char*,int) ;

int
nvme_ctrlr_suspend(struct nvme_controller *ctrlr)
{
 int to = hz;




 if (ctrlr->is_failed)
  return (0);
 while (atomic_cmpset_32(&ctrlr->is_resetting, 0, 1) == 0 && to-- > 0)
  pause("nvmesusp", 1);
 if (to <= 0) {
  nvme_printf(ctrlr,
      "Competing reset task didn't finish. Try again later.\n");
  return (EWOULDBLOCK);
 }
 nvme_ctrlr_delete_qpairs(ctrlr);
 nvme_ctrlr_disable_qpairs(ctrlr);
 DELAY(100*1000);
 nvme_ctrlr_shutdown(ctrlr);

 return (0);
}
