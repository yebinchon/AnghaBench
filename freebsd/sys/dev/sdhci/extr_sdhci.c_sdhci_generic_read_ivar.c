
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {uintptr_t bus_mode; uintptr_t bus_width; uintptr_t chip_select; uintptr_t clock; uintptr_t power_mode; uintptr_t vdd; uintptr_t vccq; uintptr_t timing; } ;
struct TYPE_4__ {uintptr_t f_min; uintptr_t f_max; uintptr_t host_ocr; uintptr_t mode; uintptr_t ocr; uintptr_t caps; TYPE_1__ ios; } ;
struct sdhci_slot {int opt; int retune_req; int retune_mode; TYPE_2__ host; } ;
typedef int device_t ;


 int EINVAL ;
 int MMC_SECTOR_SIZE ;
 int SDHCI_RETUNE_MODE_1 ;
 int SDHCI_RETUNE_MODE_2 ;
 int SDHCI_RETUNE_REQ_NEEDED ;
 int SDHCI_RETUNE_REQ_RESET ;
 int SDHCI_TUNING_ENABLED ;
 struct sdhci_slot* device_get_ivars (int ) ;
 uintptr_t retune_req_none ;
 uintptr_t retune_req_normal ;
 uintptr_t retune_req_reset ;

int
sdhci_generic_read_ivar(device_t bus, device_t child, int which,
    uintptr_t *result)
{
 const struct sdhci_slot *slot = device_get_ivars(child);

 switch (which) {
 default:
  return (EINVAL);
 case 144:
  *result = slot->host.ios.bus_mode;
  break;
 case 143:
  *result = slot->host.ios.bus_width;
  break;
 case 141:
  *result = slot->host.ios.chip_select;
  break;
 case 140:
  *result = slot->host.ios.clock;
  break;
 case 138:
  *result = slot->host.f_min;
  break;
 case 139:
  *result = slot->host.f_max;
  break;
 case 137:
  *result = slot->host.host_ocr;
  break;
 case 134:
  *result = slot->host.mode;
  break;
 case 133:
  *result = slot->host.ocr;
  break;
 case 132:
  *result = slot->host.ios.power_mode;
  break;
 case 128:
  *result = slot->host.ios.vdd;
  break;
 case 131:
  if (slot->opt & SDHCI_TUNING_ENABLED) {
   if (slot->retune_req & SDHCI_RETUNE_REQ_RESET) {
    *result = retune_req_reset;
    break;
   }
   if (slot->retune_req & SDHCI_RETUNE_REQ_NEEDED) {
    *result = retune_req_normal;
    break;
   }
  }
  *result = retune_req_none;
  break;
 case 129:
  *result = slot->host.ios.vccq;
  break;
 case 142:
  *result = slot->host.caps;
  break;
 case 130:
  *result = slot->host.ios.timing;
  break;
 case 135:




  if (slot->opt & SDHCI_TUNING_ENABLED &&
      (slot->retune_mode == SDHCI_RETUNE_MODE_1 ||
      slot->retune_mode == SDHCI_RETUNE_MODE_2)) {
   *result = 4 * 1024 * 1024 / MMC_SECTOR_SIZE;
   break;
  }
  *result = 65535;
  break;
 case 136:



  *result = 1000000;
  break;
 }
 return (0);
}
