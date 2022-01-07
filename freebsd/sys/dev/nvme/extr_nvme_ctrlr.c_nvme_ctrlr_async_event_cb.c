
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_completion {int cdw0; } ;
struct nvme_async_event_request {int log_page_id; int ctrlr; int log_page_size; int log_page_buffer; int cpl; } ;


 int NVME_GLOBAL_NAMESPACE_TAG ;
 scalar_t__ is_log_page_id_valid (int) ;
 int memcpy (int *,struct nvme_completion const*,int) ;
 scalar_t__ nvme_completion_is_error (struct nvme_completion const*) ;
 int nvme_ctrlr_async_event_log_page_cb ;
 int nvme_ctrlr_cmd_get_log_page (int ,int,int ,int ,int ,int ,struct nvme_async_event_request*) ;
 int nvme_ctrlr_construct_and_submit_aer (int ,struct nvme_async_event_request*) ;
 int nvme_ctrlr_get_log_page_size (int ,int) ;
 int nvme_notify_async_consumers (int ,struct nvme_completion const*,int,int *,int ) ;
 int nvme_printf (int ,char*,int,int,int) ;

__attribute__((used)) static void
nvme_ctrlr_async_event_cb(void *arg, const struct nvme_completion *cpl)
{
 struct nvme_async_event_request *aer = arg;

 if (nvme_completion_is_error(cpl)) {






  return;
 }


 aer->log_page_id = (cpl->cdw0 & 0xFF0000) >> 16;

 nvme_printf(aer->ctrlr, "async event occurred (type 0x%x, info 0x%02x,"
     " page 0x%02x)\n", (cpl->cdw0 & 0x07), (cpl->cdw0 & 0xFF00) >> 8,
     aer->log_page_id);

 if (is_log_page_id_valid(aer->log_page_id)) {
  aer->log_page_size = nvme_ctrlr_get_log_page_size(aer->ctrlr,
      aer->log_page_id);
  memcpy(&aer->cpl, cpl, sizeof(*cpl));
  nvme_ctrlr_cmd_get_log_page(aer->ctrlr, aer->log_page_id,
      NVME_GLOBAL_NAMESPACE_TAG, aer->log_page_buffer,
      aer->log_page_size, nvme_ctrlr_async_event_log_page_cb,
      aer);

 } else {
  nvme_notify_async_consumers(aer->ctrlr, cpl, aer->log_page_id,
      ((void*)0), 0);





  nvme_ctrlr_construct_and_submit_aer(aer->ctrlr, aer);
 }
}
