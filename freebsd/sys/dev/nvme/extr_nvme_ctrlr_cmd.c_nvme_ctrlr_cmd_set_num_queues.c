
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nvme_controller {int dummy; } ;
typedef int nvme_cb_fn_t ;


 int NVME_FEAT_NUMBER_OF_QUEUES ;
 int nvme_ctrlr_cmd_set_feature (struct nvme_controller*,int ,int,int *,int ,int ,void*) ;

void
nvme_ctrlr_cmd_set_num_queues(struct nvme_controller *ctrlr,
    uint32_t num_queues, nvme_cb_fn_t cb_fn, void *cb_arg)
{
 uint32_t cdw11;

 cdw11 = ((num_queues - 1) << 16) | (num_queues - 1);
 nvme_ctrlr_cmd_set_feature(ctrlr, NVME_FEAT_NUMBER_OF_QUEUES, cdw11,
     ((void*)0), 0, cb_fn, cb_arg);
}
