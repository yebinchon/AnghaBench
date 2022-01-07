
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct mmc_softc {int dev; } ;
struct mmc_ivars {int bus_width; int hs_tran_speed; int rca; } ;
typedef enum mmc_bus_timing { ____Placeholder_mmc_bus_timing } mmc_bus_timing ;
typedef int device_t ;


 int MMC_ERR_NONE ;
 int bus_timing_hs ;
 int mmc_set_card_bus_width (struct mmc_softc*,struct mmc_ivars*,int) ;
 int mmc_set_timing (struct mmc_softc*,struct mmc_ivars*,int) ;
 int mmcbr_set_bus_width (int ,int ) ;
 int mmcbr_set_clock (int ,int ) ;
 int mmcbr_update_ios (int ) ;

__attribute__((used)) static int
mmc_switch_to_hs400(struct mmc_softc *sc, struct mmc_ivars *ivar,
    uint32_t clock, enum mmc_bus_timing max_timing)
{
 device_t dev;
 int err;
 uint16_t rca;

 dev = sc->dev;
 rca = ivar->rca;






 mmcbr_set_clock(dev, ivar->hs_tran_speed);
 err = mmc_set_timing(sc, ivar, bus_timing_hs);
 if (err != MMC_ERR_NONE)
  return (err);





 err = mmc_set_card_bus_width(sc, ivar, max_timing);
 if (err != MMC_ERR_NONE)
  return (err);
 mmcbr_set_bus_width(dev, ivar->bus_width);
 mmcbr_update_ios(dev);


 err = mmc_set_timing(sc, ivar, max_timing);
 if (err != MMC_ERR_NONE)
  return (err);
 mmcbr_set_clock(dev, clock);
 mmcbr_update_ios(dev);
 return (MMC_ERR_NONE);
}
