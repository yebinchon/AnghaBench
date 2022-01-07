
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_softc {int dev; } ;
typedef enum mmc_vccq { ____Placeholder_mmc_vccq } mmc_vccq ;
typedef int device_t ;


 int SD_MMC_CARD_ID_FREQUENCY ;
 int bus_timing_normal ;
 int bus_width_1 ;
 int cs_dontcare ;
 int mmc_highest_voltage (int ) ;
 int mmc_ms_delay (int) ;
 int mmcbr_get_host_ocr (int ) ;
 int mmcbr_set_bus_mode (int ,int ) ;
 int mmcbr_set_bus_width (int ,int ) ;
 int mmcbr_set_chip_select (int ,int ) ;
 int mmcbr_set_clock (int ,int ) ;
 int mmcbr_set_power_mode (int ,int ) ;
 int mmcbr_set_timing (int ,int ) ;
 int mmcbr_set_vccq (int ,int) ;
 int mmcbr_set_vdd (int ,int ) ;
 scalar_t__ mmcbr_switch_vccq (int ) ;
 int mmcbr_update_ios (int ) ;
 int opendrain ;
 int power_on ;
 int power_up ;
 int vccq_120 ;
 int vccq_330 ;

__attribute__((used)) static void
mmc_power_up(struct mmc_softc *sc)
{
 device_t dev;
 enum mmc_vccq vccq;

 dev = sc->dev;
 mmcbr_set_vdd(dev, mmc_highest_voltage(mmcbr_get_host_ocr(dev)));
 mmcbr_set_bus_mode(dev, opendrain);
 mmcbr_set_chip_select(dev, cs_dontcare);
 mmcbr_set_bus_width(dev, bus_width_1);
 mmcbr_set_power_mode(dev, power_up);
 mmcbr_set_clock(dev, 0);
 mmcbr_update_ios(dev);
 for (vccq = vccq_330; ; vccq--) {
  mmcbr_set_vccq(dev, vccq);
  if (mmcbr_switch_vccq(dev) == 0 || vccq == vccq_120)
   break;
 }
 mmc_ms_delay(1);

 mmcbr_set_clock(dev, SD_MMC_CARD_ID_FREQUENCY);
 mmcbr_set_timing(dev, bus_timing_normal);
 mmcbr_set_power_mode(dev, power_on);
 mmcbr_update_ios(dev);
 mmc_ms_delay(2);
}
