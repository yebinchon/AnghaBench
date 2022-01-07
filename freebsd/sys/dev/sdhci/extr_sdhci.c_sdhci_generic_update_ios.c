
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_ios {scalar_t__ power_mode; scalar_t__ clock; scalar_t__ bus_width; int vdd; } ;
struct TYPE_2__ {struct mmc_ios ios; } ;
struct sdhci_slot {int quirks; int hostctrl; TYPE_1__ host; } ;
typedef int device_t ;


 int SDHCI_CTRL_4BITBUS ;
 int SDHCI_CTRL_8BITBUS ;
 int SDHCI_CTRL_HISPD ;
 int SDHCI_HOST_CONTROL ;
 int SDHCI_LOCK (struct sdhci_slot*) ;
 int SDHCI_QUIRK_DONT_SET_HISPD_BIT ;
 int SDHCI_QUIRK_RESET_ON_IOS ;
 int SDHCI_RESET_CMD ;
 int SDHCI_RESET_DATA ;
 int SDHCI_SET_UHS_TIMING (int ,struct sdhci_slot*) ;
 int SDHCI_SIGNAL_ENABLE ;
 int SDHCI_UNLOCK (struct sdhci_slot*) ;
 scalar_t__ SD_SDR12_MAX ;
 int WR1 (struct sdhci_slot*,int ,int ) ;
 int WR4 (struct sdhci_slot*,int ,int ) ;
 scalar_t__ bus_width_1 ;
 scalar_t__ bus_width_4 ;
 scalar_t__ bus_width_8 ;
 struct sdhci_slot* device_get_ivars (int ) ;
 int panic (char*,scalar_t__) ;
 scalar_t__ power_off ;
 int sdhci_init (struct sdhci_slot*) ;
 int sdhci_reset (struct sdhci_slot*,int) ;
 int sdhci_set_clock (struct sdhci_slot*,scalar_t__) ;
 int sdhci_set_power (struct sdhci_slot*,int ) ;

int
sdhci_generic_update_ios(device_t brdev, device_t reqdev)
{
 struct sdhci_slot *slot = device_get_ivars(reqdev);
 struct mmc_ios *ios = &slot->host.ios;

 SDHCI_LOCK(slot);

 if (ios->power_mode == power_off) {
  WR4(slot, SDHCI_SIGNAL_ENABLE, 0);
  sdhci_init(slot);
 }

 sdhci_set_clock(slot, ios->clock);
 sdhci_set_power(slot, (ios->power_mode == power_off) ? 0 : ios->vdd);
 if (ios->bus_width == bus_width_8) {
  slot->hostctrl |= SDHCI_CTRL_8BITBUS;
  slot->hostctrl &= ~SDHCI_CTRL_4BITBUS;
 } else if (ios->bus_width == bus_width_4) {
  slot->hostctrl &= ~SDHCI_CTRL_8BITBUS;
  slot->hostctrl |= SDHCI_CTRL_4BITBUS;
 } else if (ios->bus_width == bus_width_1) {
  slot->hostctrl &= ~SDHCI_CTRL_8BITBUS;
  slot->hostctrl &= ~SDHCI_CTRL_4BITBUS;
 } else {
  panic("Invalid bus width: %d", ios->bus_width);
 }
 if (ios->clock > SD_SDR12_MAX &&
     !(slot->quirks & SDHCI_QUIRK_DONT_SET_HISPD_BIT))
  slot->hostctrl |= SDHCI_CTRL_HISPD;
 else
  slot->hostctrl &= ~SDHCI_CTRL_HISPD;
 WR1(slot, SDHCI_HOST_CONTROL, slot->hostctrl);
 SDHCI_SET_UHS_TIMING(brdev, slot);

 if (slot->quirks & SDHCI_QUIRK_RESET_ON_IOS)
  sdhci_reset(slot, SDHCI_RESET_CMD | SDHCI_RESET_DATA);

 SDHCI_UNLOCK(slot);
 return (0);
}
