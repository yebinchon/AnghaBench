
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct nvme_sanitize_status_page {int dummy; } ;
struct nvme_res_notification_page {int dummy; } ;
struct nvme_ns_list {scalar_t__* ns; } ;
struct nvme_health_information_page {int critical_warning; } ;
struct nvme_firmware_page {int dummy; } ;
struct nvme_error_information_entry {int dummy; } ;
struct nvme_completion {int dummy; } ;
struct nvme_command_effects_page {int dummy; } ;
struct nvme_async_event_request {int log_page_id; TYPE_2__* ctrlr; int log_page_size; int * log_page_buffer; int cpl; } ;
struct intel_log_temp_stats {int dummy; } ;
struct TYPE_7__ {int elpe; } ;
struct TYPE_8__ {int async_event_config; TYPE_1__ cdata; } ;
 scalar_t__ NVME_MAX_NAMESPACES ;
 int intel_log_temp_stats_swapbytes (struct intel_log_temp_stats*) ;
 int nitems (scalar_t__*) ;
 int nvme_command_effects_page_swapbytes (struct nvme_command_effects_page*) ;
 scalar_t__ nvme_completion_is_error (struct nvme_completion const*) ;
 int nvme_ctrlr_cmd_set_async_event_config (TYPE_2__*,int ,int *,int *) ;
 int nvme_ctrlr_construct_and_submit_aer (TYPE_2__*,struct nvme_async_event_request*) ;
 int nvme_ctrlr_log_critical_warnings (TYPE_2__*,int ) ;
 int nvme_error_information_entry_swapbytes (int ) ;
 int nvme_firmware_page_swapbytes (struct nvme_firmware_page*) ;
 int nvme_health_information_page_swapbytes (struct nvme_health_information_page*) ;
 int nvme_notify_async_consumers (TYPE_2__*,int *,int,int *,int ) ;
 int nvme_notify_ns (TYPE_2__*,scalar_t__) ;
 int nvme_ns_list_swapbytes (struct nvme_ns_list*) ;
 int nvme_res_notification_page_swapbytes (struct nvme_res_notification_page*) ;
 int nvme_sanitize_status_page_swapbytes (struct nvme_sanitize_status_page*) ;
 int nvme_use_nvd ;

__attribute__((used)) static void
nvme_ctrlr_async_event_log_page_cb(void *arg, const struct nvme_completion *cpl)
{
 struct nvme_async_event_request *aer = arg;
 struct nvme_health_information_page *health_info;
 struct nvme_ns_list *nsl;
 struct nvme_error_information_entry *err;
 int i;






 if (nvme_completion_is_error(cpl))
  nvme_notify_async_consumers(aer->ctrlr, &aer->cpl,
      aer->log_page_id, ((void*)0), 0);
 else {

  switch (aer->log_page_id) {
  case 132:
   err = (struct nvme_error_information_entry *)aer->log_page_buffer;
   for (i = 0; i < (aer->ctrlr->cdata.elpe + 1); i++)
    nvme_error_information_entry_swapbytes(err++);
   break;
  case 130:
   nvme_health_information_page_swapbytes(
       (struct nvme_health_information_page *)aer->log_page_buffer);
   break;
  case 131:
   nvme_firmware_page_swapbytes(
       (struct nvme_firmware_page *)aer->log_page_buffer);
   break;
  case 134:
   nvme_ns_list_swapbytes(
       (struct nvme_ns_list *)aer->log_page_buffer);
   break;
  case 133:
   nvme_command_effects_page_swapbytes(
       (struct nvme_command_effects_page *)aer->log_page_buffer);
   break;
  case 129:
   nvme_res_notification_page_swapbytes(
       (struct nvme_res_notification_page *)aer->log_page_buffer);
   break;
  case 128:
   nvme_sanitize_status_page_swapbytes(
       (struct nvme_sanitize_status_page *)aer->log_page_buffer);
   break;
  case 135:
   intel_log_temp_stats_swapbytes(
       (struct intel_log_temp_stats *)aer->log_page_buffer);
   break;
  default:
   break;
  }

  if (aer->log_page_id == 130) {
   health_info = (struct nvme_health_information_page *)
       aer->log_page_buffer;
   nvme_ctrlr_log_critical_warnings(aer->ctrlr,
       health_info->critical_warning);







   aer->ctrlr->async_event_config &=
       ~health_info->critical_warning;
   nvme_ctrlr_cmd_set_async_event_config(aer->ctrlr,
       aer->ctrlr->async_event_config, ((void*)0), ((void*)0));
  } else if (aer->log_page_id == 134 &&
      !nvme_use_nvd) {
   nsl = (struct nvme_ns_list *)aer->log_page_buffer;
   for (i = 0; i < nitems(nsl->ns) && nsl->ns[i] != 0; i++) {
    if (nsl->ns[i] > NVME_MAX_NAMESPACES)
     break;
    nvme_notify_ns(aer->ctrlr, nsl->ns[i]);
   }
  }






  nvme_notify_async_consumers(aer->ctrlr, &aer->cpl,
      aer->log_page_id, aer->log_page_buffer, aer->log_page_size);
 }





 nvme_ctrlr_construct_and_submit_aer(aer->ctrlr, aer);
}
