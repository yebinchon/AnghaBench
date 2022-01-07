
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {uintptr_t spec_vers; uintptr_t dsr_imp; } ;
struct mmc_ivars {uintptr_t sec_count; uintptr_t rca; uintptr_t read_only; uintptr_t high_cap; uintptr_t mode; uintptr_t bus_width; uintptr_t erase_sector; uintptr_t cmd6_time; uintptr_t quirks; char* card_id_string; char* card_sn_string; TYPE_1__ csd; } ;
typedef int device_t ;


 int EINVAL ;
 uintptr_t MMC_SECTOR_SIZE ;
 struct mmc_ivars* device_get_ivars (int ) ;
 uintptr_t mmcbr_get_clock (int ) ;
 uintptr_t mmcbr_get_max_data (int ) ;

__attribute__((used)) static int
mmc_read_ivar(device_t bus, device_t child, int which, uintptr_t *result)
{
 struct mmc_ivars *ivar = device_get_ivars(child);

 switch (which) {
 default:
  return (EINVAL);
 case 129:
  *result = ivar->csd.spec_vers;
  break;
 case 138:
  *result = ivar->csd.dsr_imp;
  break;
 case 134:
  *result = ivar->sec_count;
  break;
 case 132:
  *result = ivar->rca;
  break;
 case 130:
  *result = MMC_SECTOR_SIZE;
  break;
 case 128:
  *result = mmcbr_get_clock(bus);
  break;
 case 131:
  *result = ivar->read_only;
  break;
 case 136:
  *result = ivar->high_cap;
  break;
 case 140:
  *result = ivar->mode;
  break;
 case 143:
  *result = ivar->bus_width;
  break;
 case 137:
  *result = ivar->erase_sector;
  break;
 case 135:
  *result = mmcbr_get_max_data(bus);
  break;
 case 139:
  *result = ivar->cmd6_time;
  break;
 case 133:
  *result = ivar->quirks;
  break;
 case 142:
  *(char **)result = ivar->card_id_string;
  break;
 case 141:
  *(char **)result = ivar->card_sn_string;
  break;
 }
 return (0);
}
