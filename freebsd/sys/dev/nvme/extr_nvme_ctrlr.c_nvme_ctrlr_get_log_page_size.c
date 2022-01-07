
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct nvme_sanitize_status_page {int dummy; } ;
struct nvme_res_notification_page {int dummy; } ;
struct nvme_ns_list {int dummy; } ;
struct nvme_health_information_page {int dummy; } ;
struct nvme_firmware_page {int dummy; } ;
struct nvme_error_information_entry {int dummy; } ;
struct TYPE_2__ {int elpe; } ;
struct nvme_controller {TYPE_1__ cdata; } ;
struct nvme_command_effects_page {int dummy; } ;
 int NVME_MAX_AER_LOG_SIZE ;
 int min (int,int ) ;

__attribute__((used)) static uint32_t
nvme_ctrlr_get_log_page_size(struct nvme_controller *ctrlr, uint8_t page_id)
{
 uint32_t log_page_size;

 switch (page_id) {
 case 132:
  log_page_size = min(
      sizeof(struct nvme_error_information_entry) *
      (ctrlr->cdata.elpe + 1), NVME_MAX_AER_LOG_SIZE);
  break;
 case 130:
  log_page_size = sizeof(struct nvme_health_information_page);
  break;
 case 131:
  log_page_size = sizeof(struct nvme_firmware_page);
  break;
 case 134:
  log_page_size = sizeof(struct nvme_ns_list);
  break;
 case 133:
  log_page_size = sizeof(struct nvme_command_effects_page);
  break;
 case 129:
  log_page_size = sizeof(struct nvme_res_notification_page);
  break;
 case 128:
  log_page_size = sizeof(struct nvme_sanitize_status_page);
  break;
 default:
  log_page_size = 0;
  break;
 }

 return (log_page_size);
}
