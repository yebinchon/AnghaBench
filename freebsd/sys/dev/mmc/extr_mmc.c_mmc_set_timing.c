
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_char ;
struct mmc_softc {int dev; } ;
struct mmc_ivars {int cmd6_time; int rca; } ;
typedef enum mmc_bus_timing { ____Placeholder_mmc_bus_timing } mmc_bus_timing ;


 int EXT_CSD_CMD_SET_NORMAL ;
 int EXT_CSD_HS_TIMING ;
 int EXT_CSD_HS_TIMING_BC ;
 int EXT_CSD_HS_TIMING_HS ;
 int EXT_CSD_HS_TIMING_HS200 ;
 int EXT_CSD_HS_TIMING_HS400 ;
 int MMC_ERR_FAILED ;
 int MMC_ERR_INVALID ;
 int MMC_ERR_NONE ;
 int SD_SWITCH_GROUP1 ;
 int SD_SWITCH_HS_MODE ;
 int SD_SWITCH_MODE_SET ;
 int SD_SWITCH_NORMAL_MODE ;






 int mmc_sd_switch (struct mmc_softc*,int ,int ,int,int*) ;
 int mmc_switch (int ,int ,int ,int ,int ,int,int ,int) ;
 int mmc_switch_status (int ,int ,int ,int ) ;
 scalar_t__ mmcbr_get_mode (int ) ;
 int mmcbr_set_timing (int ,int) ;
 int mmcbr_update_ios (int ) ;
 scalar_t__ mode_sd ;

__attribute__((used)) static int
mmc_set_timing(struct mmc_softc *sc, struct mmc_ivars *ivar,
    enum mmc_bus_timing timing)
{
 u_char switch_res[64];
 uint8_t value;
 int err;

 if (mmcbr_get_mode(sc->dev) == mode_sd) {
  switch (timing) {
  case 128:
   value = SD_SWITCH_NORMAL_MODE;
   break;
  case 133:
   value = SD_SWITCH_HS_MODE;
   break;
  default:
   return (MMC_ERR_INVALID);
  }
  err = mmc_sd_switch(sc, SD_SWITCH_MODE_SET, SD_SWITCH_GROUP1,
      value, switch_res);
  if (err != MMC_ERR_NONE)
   return (err);
  if ((switch_res[16] & 0xf) != value)
   return (MMC_ERR_FAILED);
  mmcbr_set_timing(sc->dev, timing);
  mmcbr_update_ios(sc->dev);
 } else {
  switch (timing) {
  case 128:
   value = EXT_CSD_HS_TIMING_BC;
   break;
  case 133:
  case 132:
   value = EXT_CSD_HS_TIMING_HS;
   break;
  case 131:
   value = EXT_CSD_HS_TIMING_HS200;
   break;
  case 130:
  case 129:
   value = EXT_CSD_HS_TIMING_HS400;
   break;
  default:
   return (MMC_ERR_INVALID);
  }
  err = mmc_switch(sc->dev, sc->dev, ivar->rca,
      EXT_CSD_CMD_SET_NORMAL, EXT_CSD_HS_TIMING, value,
      ivar->cmd6_time, 0);
  if (err != MMC_ERR_NONE)
   return (err);
  mmcbr_set_timing(sc->dev, timing);
  mmcbr_update_ios(sc->dev);
  err = mmc_switch_status(sc->dev, sc->dev, ivar->rca,
      ivar->cmd6_time);
 }
 return (err);
}
