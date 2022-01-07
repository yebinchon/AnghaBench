
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mmc_softc {int dev; int squelched; } ;
typedef int device_t ;


 scalar_t__ MMC_ERR_NONE ;
 int MMC_OCR_CCS ;
 int SD_MMC_CARD_ID_FREQUENCY ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,...) ;
 int mmc_calculate_clock (struct mmc_softc*) ;
 scalar_t__ mmc_debug ;
 int mmc_delete_cards (struct mmc_softc*,int) ;
 int mmc_discover_cards (struct mmc_softc*) ;
 int mmc_idle_cards (struct mmc_softc*) ;
 int mmc_power_down (struct mmc_softc*) ;
 int mmc_power_up (struct mmc_softc*) ;
 int mmc_rescan_cards (struct mmc_softc*) ;
 int mmc_select_vdd (struct mmc_softc*,int ) ;
 scalar_t__ mmc_send_app_op_cond (struct mmc_softc*,int,int *) ;
 int mmc_send_if_cond (struct mmc_softc*,int) ;
 scalar_t__ mmc_send_op_cond (struct mmc_softc*,int,int *) ;
 scalar_t__ mmcbr_get_mode (int ) ;
 int mmcbr_get_ocr (int ) ;
 scalar_t__ mmcbr_get_power_mode (int ) ;
 int mmcbr_set_bus_mode (int ,int ) ;
 int mmcbr_set_clock (int ,int ) ;
 int mmcbr_set_mode (int ,scalar_t__) ;
 int mmcbr_set_ocr (int ,int ) ;
 int mmcbr_update_ios (int ) ;
 scalar_t__ mode_mmc ;
 scalar_t__ mode_sd ;
 int opendrain ;
 scalar_t__ power_on ;
 int pushpull ;

__attribute__((used)) static void
mmc_go_discovery(struct mmc_softc *sc)
{
 uint32_t ocr;
 device_t dev;
 int err;

 dev = sc->dev;
 if (mmcbr_get_power_mode(dev) != power_on) {



  sc->squelched++;
  mmcbr_set_mode(dev, mode_sd);
  mmc_power_up(sc);
  mmcbr_set_bus_mode(dev, pushpull);
  if (bootverbose || mmc_debug)
   device_printf(sc->dev, "Probing bus\n");
  mmc_idle_cards(sc);
  err = mmc_send_if_cond(sc, 1);
  if ((bootverbose || mmc_debug) && err == 0)
   device_printf(sc->dev,
       "SD 2.0 interface conditions: OK\n");
  if (mmc_send_app_op_cond(sc, 0, &ocr) != MMC_ERR_NONE) {
   if (bootverbose || mmc_debug)
    device_printf(sc->dev, "SD probe: failed\n");



   mmcbr_set_mode(dev, mode_mmc);
   if (mmc_send_op_cond(sc, 0, &ocr) != MMC_ERR_NONE) {
    if (bootverbose || mmc_debug)
     device_printf(sc->dev,
         "MMC probe: failed\n");
    ocr = 0;
   } else if (bootverbose || mmc_debug)
    device_printf(sc->dev,
        "MMC probe: OK (OCR: 0x%08x)\n", ocr);
  } else if (bootverbose || mmc_debug)
   device_printf(sc->dev, "SD probe: OK (OCR: 0x%08x)\n",
       ocr);
  sc->squelched--;

  mmcbr_set_ocr(dev, mmc_select_vdd(sc, ocr));
  if (mmcbr_get_ocr(dev) != 0)
   mmc_idle_cards(sc);
 } else {
  mmcbr_set_bus_mode(dev, opendrain);
  mmcbr_set_clock(dev, SD_MMC_CARD_ID_FREQUENCY);
  mmcbr_update_ios(dev);

 }




 if (bootverbose || mmc_debug)
  device_printf(sc->dev, "Current OCR: 0x%08x\n",
      mmcbr_get_ocr(dev));
 if (mmcbr_get_ocr(dev) == 0) {
  device_printf(sc->dev, "No compatible cards found on bus\n");
  (void)mmc_delete_cards(sc, 0);
  mmc_power_down(sc);
  return;
 }



 if (mmcbr_get_mode(dev) == mode_sd) {
  err = mmc_send_if_cond(sc, 1);
  mmc_send_app_op_cond(sc,
      (err ? 0 : MMC_OCR_CCS) | mmcbr_get_ocr(dev), ((void*)0));
 } else
  mmc_send_op_cond(sc, MMC_OCR_CCS | mmcbr_get_ocr(dev), ((void*)0));
 mmc_discover_cards(sc);
 mmc_rescan_cards(sc);

 mmcbr_set_bus_mode(dev, pushpull);
 mmcbr_update_ios(dev);
 mmc_calculate_clock(sc);
}
