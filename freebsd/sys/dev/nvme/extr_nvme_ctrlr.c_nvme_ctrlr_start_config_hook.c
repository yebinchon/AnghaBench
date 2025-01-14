
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_controller {int is_initialized; int config_hook; int adminq; } ;


 int config_intrhook_disestablish (int *) ;
 int nvme_admin_qpair_enable (int *) ;
 scalar_t__ nvme_ctrlr_construct_io_qpairs (struct nvme_controller*) ;
 int nvme_ctrlr_fail (struct nvme_controller*) ;
 scalar_t__ nvme_ctrlr_set_num_qpairs (struct nvme_controller*) ;
 int nvme_ctrlr_start (struct nvme_controller*,int) ;
 int nvme_notify_new_controller (struct nvme_controller*) ;
 int nvme_qpair_reset (int *) ;
 int nvme_sysctl_initialize_ctrlr (struct nvme_controller*) ;

void
nvme_ctrlr_start_config_hook(void *arg)
{
 struct nvme_controller *ctrlr = arg;

 nvme_qpair_reset(&ctrlr->adminq);
 nvme_admin_qpair_enable(&ctrlr->adminq);

 if (nvme_ctrlr_set_num_qpairs(ctrlr) == 0 &&
     nvme_ctrlr_construct_io_qpairs(ctrlr) == 0)
  nvme_ctrlr_start(ctrlr, 0);
 else
  nvme_ctrlr_fail(ctrlr);

 nvme_sysctl_initialize_ctrlr(ctrlr);
 config_intrhook_disestablish(&ctrlr->config_hook);

 ctrlr->is_initialized = 1;
 nvme_notify_new_controller(ctrlr);
}
