
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct mmc_softc {int child_count; int * child_list; int dev; } ;
struct mmc_ivars {int timings; int bus_width; int rca; } ;
typedef enum mmc_bus_timing { ____Placeholder_mmc_bus_timing } mmc_bus_timing ;
typedef int device_t ;


 scalar_t__ MMC_ERR_NONE ;
 scalar_t__ bootverbose ;
 int bus_timing_max ;
 int bus_timing_mmc_ddr52 ;
 int bus_timing_mmc_hs200 ;
 int bus_timing_mmc_hs400 ;
 int bus_timing_mmc_hs400es ;
 int bus_timing_normal ;
 struct mmc_ivars* device_get_ivars (int ) ;
 int device_printf (int ,char*,int,...) ;
 scalar_t__ isclr (int*,int) ;
 scalar_t__ isset (int*,int) ;
 scalar_t__ mmc_debug ;
 scalar_t__ mmc_host_timing (int ,int) ;
 scalar_t__ mmc_select_card (struct mmc_softc*,int ) ;
 scalar_t__ mmc_set_card_bus_width (struct mmc_softc*,struct mmc_ivars*,int) ;
 scalar_t__ mmc_set_power_class (struct mmc_softc*,struct mmc_ivars*) ;
 scalar_t__ mmc_set_timing (struct mmc_softc*,struct mmc_ivars*,int) ;
 scalar_t__ mmc_set_vccq (struct mmc_softc*,struct mmc_ivars*,int) ;
 scalar_t__ mmc_switch_to_hs400 (struct mmc_softc*,struct mmc_ivars*,int,int) ;
 int mmc_timing_to_dtr (struct mmc_ivars*,int) ;
 int mmc_timing_to_string (int) ;
 int mmcbr_get_f_max (int ) ;
 int mmcbr_set_bus_width (int ,int ) ;
 int mmcbr_set_clock (int ,int) ;
 scalar_t__ mmcbr_tune (int ,int) ;
 int mmcbr_update_ios (int ) ;

__attribute__((used)) static int
mmc_calculate_clock(struct mmc_softc *sc)
{
 device_t dev;
 struct mmc_ivars *ivar;
 int i;
 uint32_t dtr, max_dtr;
 uint16_t rca;
 enum mmc_bus_timing max_timing, timing;
 bool changed, hs400;

 dev = sc->dev;
 max_dtr = mmcbr_get_f_max(dev);
 max_timing = bus_timing_max;
 do {
  changed = 0;
  for (i = 0; i < sc->child_count; i++) {
   ivar = device_get_ivars(sc->child_list[i]);
   if (isclr(&ivar->timings, max_timing) ||
       !mmc_host_timing(dev, max_timing)) {
    for (timing = max_timing - 1; timing >=
        bus_timing_normal; timing--) {
     if (isset(&ivar->timings, timing) &&
         mmc_host_timing(dev, timing)) {
      max_timing = timing;
      break;
     }
    }
    changed = 1;
   }
   dtr = mmc_timing_to_dtr(ivar, max_timing);
   if (dtr < max_dtr) {
    max_dtr = dtr;
    changed = 1;
   }
  }
 } while (changed == 1);

 if (bootverbose || mmc_debug) {
  device_printf(dev,
      "setting transfer rate to %d.%03dMHz (%s timing)\n",
      max_dtr / 1000000, (max_dtr / 1000) % 1000,
      mmc_timing_to_string(max_timing));
 }
 hs400 = max_timing == bus_timing_mmc_hs400;
 timing = hs400 == 1 ? bus_timing_mmc_hs200 : max_timing;
 for (i = 0; i < sc->child_count; i++) {
  ivar = device_get_ivars(sc->child_list[i]);
  if ((ivar->timings & ~(1 << bus_timing_normal)) == 0)
   goto clock;

  rca = ivar->rca;
  if (mmc_select_card(sc, rca) != MMC_ERR_NONE) {
   device_printf(dev, "Card at relative address %d "
       "failed to select\n", rca);
   continue;
  }

  if (timing == bus_timing_mmc_hs200 ||
      timing == bus_timing_mmc_hs400es) {
   if (mmc_set_vccq(sc, ivar, timing) != MMC_ERR_NONE) {
    device_printf(dev, "Failed to set VCCQ for "
        "card at relative address %d\n", rca);
    continue;
   }
  }

  if (timing == bus_timing_mmc_hs200) {

   if (mmc_set_card_bus_width(sc, ivar, timing) !=
       MMC_ERR_NONE) {
    device_printf(dev, "Card at relative address "
        "%d failed to set bus width\n", rca);
    continue;
   }
   mmcbr_set_bus_width(dev, ivar->bus_width);
   mmcbr_update_ios(dev);
  } else if (timing == bus_timing_mmc_hs400es) {
   if (mmc_switch_to_hs400(sc, ivar, max_dtr, timing) !=
       MMC_ERR_NONE) {
    device_printf(dev, "Card at relative address "
        "%d failed to set %s timing\n", rca,
        mmc_timing_to_string(timing));
    continue;
   }
   goto power_class;
  }

  if (mmc_set_timing(sc, ivar, timing) != MMC_ERR_NONE) {
   device_printf(dev, "Card at relative address %d "
       "failed to set %s timing\n", rca,
       mmc_timing_to_string(timing));
   continue;
  }

  if (timing == bus_timing_mmc_ddr52) {




   if (mmc_set_card_bus_width(sc, ivar, timing) !=
       MMC_ERR_NONE) {
    device_printf(dev, "Card at relative address "
        "%d failed to set bus width\n", rca);
    continue;
   }
   mmcbr_set_bus_width(dev, ivar->bus_width);
   mmcbr_update_ios(dev);
   if (mmc_set_vccq(sc, ivar, timing) != MMC_ERR_NONE) {
    device_printf(dev, "Failed to set VCCQ for "
        "card at relative address %d\n", rca);
    continue;
   }
  }

clock:

  mmcbr_set_clock(dev, max_dtr);
  mmcbr_update_ios(dev);

  if (mmcbr_tune(dev, hs400) != 0) {
   device_printf(dev, "Card at relative address %d "
       "failed to execute initial tuning\n", rca);
   continue;
  }

  if (hs400 == 1 && mmc_switch_to_hs400(sc, ivar, max_dtr,
      max_timing) != MMC_ERR_NONE) {
   device_printf(dev, "Card at relative address %d "
       "failed to set %s timing\n", rca,
       mmc_timing_to_string(max_timing));
   continue;
  }

power_class:
  if (mmc_set_power_class(sc, ivar) != MMC_ERR_NONE) {
   device_printf(dev, "Card at relative address %d "
       "failed to set power class\n", rca);
  }
 }
 (void)mmc_select_card(sc, 0);
 return (max_dtr);
}
