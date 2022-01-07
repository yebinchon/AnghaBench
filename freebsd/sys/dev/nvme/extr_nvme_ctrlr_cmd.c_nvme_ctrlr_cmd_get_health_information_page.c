
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nvme_health_information_page {int dummy; } ;
struct nvme_controller {int dummy; } ;
typedef int nvme_cb_fn_t ;


 int NVME_LOG_HEALTH_INFORMATION ;
 int nvme_ctrlr_cmd_get_log_page (struct nvme_controller*,int ,int ,struct nvme_health_information_page*,int,int ,void*) ;

void
nvme_ctrlr_cmd_get_health_information_page(struct nvme_controller *ctrlr,
    uint32_t nsid, struct nvme_health_information_page *payload,
    nvme_cb_fn_t cb_fn, void *cb_arg)
{

 nvme_ctrlr_cmd_get_log_page(ctrlr, NVME_LOG_HEALTH_INFORMATION,
     nsid, payload, sizeof(*payload), cb_fn, cb_arg);
}
