
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct mmc_ios {int timing; scalar_t__ clock; } ;
struct TYPE_2__ {struct mmc_ios ios; } ;
struct sdhci_slot {TYPE_1__ host; int bus; } ;
struct sdhci_acpi_softc {struct sdhci_acpi_device* acpi_dev; } ;
struct sdhci_acpi_device {scalar_t__ uid; int hid; } ;
typedef enum mmc_bus_timing { ____Placeholder_mmc_bus_timing } mmc_bus_timing ;
typedef int device_t ;


 int DELAY (int) ;
 int SDHCI_AMD_RESET_DLL_REG ;
 int SDHCI_CTRL2_MMC_HS400 ;
 int SDHCI_CTRL2_SAMPLING_CLOCK ;
 int SDHCI_CTRL2_UHS_MASK ;
 int SDHCI_CTRL2_UHS_SDR104 ;
 int SDHCI_HOST_CONTROL2 ;
 int SDHCI_READ_2 (int ,struct sdhci_slot*,int ) ;
 int SDHCI_WRITE_2 (int ,struct sdhci_slot*,int ,int) ;
 int SDHCI_WRITE_4 (int ,struct sdhci_slot*,int ,int) ;
 scalar_t__ SD_SDR50_MAX ;
 int bus_timing_hs ;
 int bus_timing_mmc_hs400 ;
 struct sdhci_acpi_softc* device_get_softc (int ) ;
 int sdhci_generic_set_uhs_timing (int ,struct sdhci_slot*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
sdhci_acpi_set_uhs_timing(device_t dev, struct sdhci_slot *slot)
{
 const struct sdhci_acpi_softc *sc;
 const struct sdhci_acpi_device *acpi_dev;
 const struct mmc_ios *ios;
 device_t bus;
 uint16_t old_timing;
 enum mmc_bus_timing timing;

 bus = slot->bus;
 old_timing = SDHCI_READ_2(bus, slot, SDHCI_HOST_CONTROL2);
 old_timing &= SDHCI_CTRL2_UHS_MASK;
 sdhci_generic_set_uhs_timing(dev, slot);

 sc = device_get_softc(dev);
 acpi_dev = sc->acpi_dev;






 if (strcmp(acpi_dev->hid, "AMDI0040") == 0 && acpi_dev->uid == 0) {
  ios = &slot->host.ios;
  timing = ios->timing;
  if (old_timing == SDHCI_CTRL2_UHS_SDR104 &&
      timing == bus_timing_hs)
   SDHCI_WRITE_2(bus, slot, SDHCI_HOST_CONTROL2,
       SDHCI_READ_2(bus, slot, SDHCI_HOST_CONTROL2) &
       ~SDHCI_CTRL2_SAMPLING_CLOCK);
  if (ios->clock > SD_SDR50_MAX &&
      old_timing != SDHCI_CTRL2_MMC_HS400 &&
      timing == bus_timing_mmc_hs400) {
   SDHCI_WRITE_2(bus, slot, SDHCI_HOST_CONTROL2,
       SDHCI_READ_2(bus, slot, SDHCI_HOST_CONTROL2) |
       SDHCI_CTRL2_SAMPLING_CLOCK);
   SDHCI_WRITE_4(bus, slot, SDHCI_AMD_RESET_DLL_REG,
       0x40003210);
   DELAY(20);
   SDHCI_WRITE_4(bus, slot, SDHCI_AMD_RESET_DLL_REG,
       0x40033210);
  }
 }
}
