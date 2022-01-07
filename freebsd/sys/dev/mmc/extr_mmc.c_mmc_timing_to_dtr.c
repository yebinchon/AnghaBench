
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mmc_ivars {int hs_tran_speed; int tran_speed; } ;
typedef enum mmc_bus_timing { ____Placeholder_mmc_bus_timing } mmc_bus_timing ;


 int MMC_TYPE_DDR52_MAX ;
 int MMC_TYPE_HS200_HS400ES_MAX ;
 int SD_DDR50_MAX ;
 int SD_SDR104_MAX ;
 int SD_SDR12_MAX ;
 int SD_SDR25_MAX ;
 int SD_SDR50_MAX ;
__attribute__((used)) static uint32_t
mmc_timing_to_dtr(struct mmc_ivars *ivar, enum mmc_bus_timing timing)
{

 switch (timing) {
 case 133:
  return (ivar->tran_speed);
 case 138:
  return (ivar->hs_tran_speed);
 case 130:
  return (SD_SDR12_MAX);
 case 129:
  return (SD_SDR25_MAX);
 case 132:
  return (SD_DDR50_MAX);
 case 128:
  return (SD_SDR50_MAX);
 case 131:
  return (SD_SDR104_MAX);
 case 137:
  return (MMC_TYPE_DDR52_MAX);
 case 136:
 case 135:
 case 134:
  return (MMC_TYPE_HS200_HS400ES_MAX);
 }
 return (0);
}
