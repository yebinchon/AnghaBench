
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct sdhci_xenon_softc {int slot_id; int mem_res; int reg_vqmmc; int dev; } ;
struct mmc_ios {int power_mode; scalar_t__ clock; } ;
struct TYPE_2__ {struct mmc_ios ios; } ;
struct sdhci_slot {TYPE_1__ host; } ;
typedef int device_t ;


 scalar_t__ SD_MMC_CARD_ID_FREQUENCY ;
 int XENON_SDCLK_IDLEOFF_ENABLE_SHIFT ;
 int XENON_SYS_OP_CTRL ;
 int bootverbose ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;
 struct sdhci_slot* device_get_ivars (int ) ;
 struct sdhci_xenon_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;



 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int sdhci_generic_update_ios (int ,int ) ;
 int sdhci_xenon_phy_set (int ,struct mmc_ios*) ;

__attribute__((used)) static int
sdhci_xenon_update_ios(device_t brdev, device_t reqdev)
{
 int err;
 struct sdhci_xenon_softc *sc;
 struct mmc_ios *ios;
 struct sdhci_slot *slot;
 uint32_t reg;

 err = sdhci_generic_update_ios(brdev, reqdev);
 if (err != 0)
  return (err);

  sc = device_get_softc(brdev);
 slot = device_get_ivars(reqdev);
  ios = &slot->host.ios;

 switch (ios->power_mode) {
 case 129:
  break;
 case 130:
  if (bootverbose)
   device_printf(sc->dev, "Powering down sd/mmc\n");

  if (sc->reg_vqmmc)
   regulator_disable(sc->reg_vqmmc);
  break;
 case 128:
  if (bootverbose)
   device_printf(sc->dev, "Powering up sd/mmc\n");

  if (sc->reg_vqmmc)
   regulator_enable(sc->reg_vqmmc);
  break;
 };


 if (ios->clock != 0)
  sdhci_xenon_phy_set(brdev, ios);

 if (ios->clock > SD_MMC_CARD_ID_FREQUENCY) {

  reg = bus_read_4(sc->mem_res, XENON_SYS_OP_CTRL);
  reg |= 1 << (XENON_SDCLK_IDLEOFF_ENABLE_SHIFT + sc->slot_id);
  bus_write_4(sc->mem_res, XENON_SYS_OP_CTRL, reg);
 }

 return (0);
}
