
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct mmc_softc {int dev; } ;
struct TYPE_2__ {int spec_vers; } ;
struct mmc_ivars {int bus_width; int* raw_ext_csd; int cmd6_time; int rca; TYPE_1__ csd; } ;
typedef enum mmc_bus_width { ____Placeholder_mmc_bus_width } mmc_bus_width ;
typedef enum mmc_bus_timing { ____Placeholder_mmc_bus_timing } mmc_bus_timing ;
typedef int device_t ;


 int EXT_CSD_CMD_SET_NORMAL ;
 int EXT_CSD_POWER_CLASS ;
 int EXT_CSD_POWER_CLASS_4BIT_MASK ;
 int EXT_CSD_POWER_CLASS_4BIT_SHIFT ;
 int EXT_CSD_POWER_CLASS_8BIT_MASK ;
 int EXT_CSD_POWER_CLASS_8BIT_SHIFT ;
 size_t EXT_CSD_PWR_CL_200_195 ;
 size_t EXT_CSD_PWR_CL_200_360 ;
 size_t EXT_CSD_PWR_CL_200_360_DDR ;
 size_t EXT_CSD_PWR_CL_26_195 ;
 size_t EXT_CSD_PWR_CL_26_360 ;
 size_t EXT_CSD_PWR_CL_52_195 ;
 size_t EXT_CSD_PWR_CL_52_195_DDR ;
 size_t EXT_CSD_PWR_CL_52_360 ;
 size_t EXT_CSD_PWR_CL_52_360_DDR ;
 int MMC_ERR_INVALID ;
 int MMC_ERR_NONE ;
 int MMC_TYPE_HS200_HS400ES_MAX ;
 int MMC_TYPE_HS_26_MAX ;
 int MMC_TYPE_HS_52_MAX ;
 int bus_timing_mmc_ddr52 ;
 int bus_timing_normal ;
 int bus_width_1 ;
 int bus_width_4 ;
 int bus_width_8 ;
 int device_printf (int ,char*,int) ;
 int mmc_switch (int ,int ,int ,int ,int ,int,int ,int) ;
 int mmcbr_get_clock (int ) ;
 scalar_t__ mmcbr_get_mode (int ) ;
 int mmcbr_get_timing (int ) ;
 int mmcbr_get_vdd (int ) ;
 scalar_t__ mode_mmc ;

__attribute__((used)) static int
mmc_set_power_class(struct mmc_softc *sc, struct mmc_ivars *ivar)
{
 device_t dev;
 const uint8_t *ext_csd;
 uint32_t clock;
 uint8_t value;
 enum mmc_bus_timing timing;
 enum mmc_bus_width bus_width;

 dev = sc->dev;
 timing = mmcbr_get_timing(dev);
 bus_width = ivar->bus_width;
 if (mmcbr_get_mode(dev) != mode_mmc || ivar->csd.spec_vers < 4 ||
     timing == bus_timing_normal || bus_width == bus_width_1)
  return (MMC_ERR_NONE);

 value = 0;
 ext_csd = ivar->raw_ext_csd;
 clock = mmcbr_get_clock(dev);
 switch (1 << mmcbr_get_vdd(dev)) {
 case 128:
  if (clock <= MMC_TYPE_HS_26_MAX)
   value = ext_csd[EXT_CSD_PWR_CL_26_195];
  else if (clock <= MMC_TYPE_HS_52_MAX) {
   if (timing >= bus_timing_mmc_ddr52 &&
       bus_width >= bus_width_4)
    value = ext_csd[EXT_CSD_PWR_CL_52_195_DDR];
   else
    value = ext_csd[EXT_CSD_PWR_CL_52_195];
  } else if (clock <= MMC_TYPE_HS200_HS400ES_MAX)
   value = ext_csd[EXT_CSD_PWR_CL_200_195];
  break;
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
  if (clock <= MMC_TYPE_HS_26_MAX)
   value = ext_csd[EXT_CSD_PWR_CL_26_360];
  else if (clock <= MMC_TYPE_HS_52_MAX) {
   if (timing == bus_timing_mmc_ddr52 &&
       bus_width >= bus_width_4)
    value = ext_csd[EXT_CSD_PWR_CL_52_360_DDR];
   else
    value = ext_csd[EXT_CSD_PWR_CL_52_360];
  } else if (clock <= MMC_TYPE_HS200_HS400ES_MAX) {
   if (bus_width == bus_width_8)
    value = ext_csd[EXT_CSD_PWR_CL_200_360_DDR];
   else
    value = ext_csd[EXT_CSD_PWR_CL_200_360];
  }
  break;
 default:
  device_printf(dev, "No power class support for VDD 0x%x\n",
   1 << mmcbr_get_vdd(dev));
  return (MMC_ERR_INVALID);
 }

 if (bus_width == bus_width_8)
  value = (value & EXT_CSD_POWER_CLASS_8BIT_MASK) >>
      EXT_CSD_POWER_CLASS_8BIT_SHIFT;
 else
  value = (value & EXT_CSD_POWER_CLASS_4BIT_MASK) >>
      EXT_CSD_POWER_CLASS_4BIT_SHIFT;

 if (value == 0)
  return (MMC_ERR_NONE);

 return (mmc_switch(dev, dev, ivar->rca, EXT_CSD_CMD_SET_NORMAL,
     EXT_CSD_POWER_CLASS, value, ivar->cmd6_time, 1));
}
