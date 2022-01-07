
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_firmware_page {int dummy; } ;
struct nvme_controller {int dummy; } ;
typedef int nvme_cb_fn_t ;


 int NVME_GLOBAL_NAMESPACE_TAG ;
 int NVME_LOG_FIRMWARE_SLOT ;
 int nvme_ctrlr_cmd_get_log_page (struct nvme_controller*,int ,int ,struct nvme_firmware_page*,int,int ,void*) ;

void
nvme_ctrlr_cmd_get_firmware_page(struct nvme_controller *ctrlr,
    struct nvme_firmware_page *payload, nvme_cb_fn_t cb_fn, void *cb_arg)
{

 nvme_ctrlr_cmd_get_log_page(ctrlr, NVME_LOG_FIRMWARE_SLOT,
     NVME_GLOBAL_NAMESPACE_TAG, payload, sizeof(*payload), cb_fn,
     cb_arg);
}
