
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int dcap; int lfcap; int btech; int dvol; int wcap; int lcap; int gra1; int gra2; int oeminfo; int type; int serial; int model; int units; } ;
struct acpi_smbat_softc {TYPE_1__ bif; int bif_lastupdated; } ;
struct acpi_bif {int dummy; } ;
typedef int device_t ;


 int ACPI_BIF_UNITS_MA ;
 int ACPI_BIF_UNITS_MW ;
 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int ENXIO ;
 int SMBATT_ADDRESS ;
 int SMBATT_BM_CAPACITY_MODE ;
 int SMBATT_CMD_BATTERY_MODE ;
 int SMBATT_CMD_DESIGN_CAPACITY ;
 int SMBATT_CMD_DESIGN_VOLTAGE ;
 int SMBATT_CMD_DEVICE_CHEMISTRY ;
 int SMBATT_CMD_DEVICE_NAME ;
 int SMBATT_CMD_FULL_CHARGE_CAPACITY ;
 int SMBATT_CMD_MANUFACTURER_DATA ;
 int SMBATT_CMD_SERIAL_NUMBER ;
 int acpi_smbat_info_expired (int *) ;
 int acpi_smbat_info_updated (int *) ;
 scalar_t__ acpi_smbus_read_2 (struct acpi_smbat_softc*,int ,int ,int*) ;
 scalar_t__ acpi_smbus_read_multi_1 (struct acpi_smbat_softc*,int ,int ,int ,int) ;
 struct acpi_smbat_softc* device_get_softc (int ) ;
 int memcpy (struct acpi_bif*,TYPE_1__*,int) ;
 int smbat ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static int
acpi_smbat_get_bif(device_t dev, struct acpi_bif *bif)
{
 struct acpi_smbat_softc *sc;
 int error;
 uint32_t factor;
 uint16_t val;
 uint8_t addr;

 ACPI_SERIAL_BEGIN(smbat);

 addr = SMBATT_ADDRESS;
 error = ENXIO;
 sc = device_get_softc(dev);

 if (!acpi_smbat_info_expired(&sc->bif_lastupdated)) {
  error = 0;
  goto out;
 }

 if (acpi_smbus_read_2(sc, addr, SMBATT_CMD_BATTERY_MODE, &val))
  goto out;
 if (val & SMBATT_BM_CAPACITY_MODE) {
  factor = 10;
  sc->bif.units = ACPI_BIF_UNITS_MW;
 } else {
  factor = 1;
  sc->bif.units = ACPI_BIF_UNITS_MA;
 }

 if (acpi_smbus_read_2(sc, addr, SMBATT_CMD_DESIGN_CAPACITY, &val))
  goto out;
 sc->bif.dcap = val * factor;

 if (acpi_smbus_read_2(sc, addr, SMBATT_CMD_FULL_CHARGE_CAPACITY, &val))
  goto out;
 sc->bif.lfcap = val * factor;
 sc->bif.btech = 1;

 if (acpi_smbus_read_2(sc, addr, SMBATT_CMD_DESIGN_VOLTAGE, &val))
  goto out;
 sc->bif.dvol = val;

 sc->bif.wcap = sc->bif.dcap / 10;
 sc->bif.lcap = sc->bif.dcap / 10;

 sc->bif.gra1 = factor;
 sc->bif.gra2 = factor;

 if (acpi_smbus_read_multi_1(sc, addr, SMBATT_CMD_DEVICE_NAME,
     sc->bif.model, sizeof(sc->bif.model)))
  goto out;

 if (acpi_smbus_read_2(sc, addr, SMBATT_CMD_SERIAL_NUMBER, &val))
  goto out;
 snprintf(sc->bif.serial, sizeof(sc->bif.serial), "0x%04x", val);

 if (acpi_smbus_read_multi_1(sc, addr, SMBATT_CMD_DEVICE_CHEMISTRY,
     sc->bif.type, sizeof(sc->bif.type)))
  goto out;

 if (acpi_smbus_read_multi_1(sc, addr, SMBATT_CMD_MANUFACTURER_DATA,
     sc->bif.oeminfo, sizeof(sc->bif.oeminfo)))
  goto out;



 acpi_smbat_info_updated(&sc->bif_lastupdated);
 error = 0;

out:
 if (error == 0)
  memcpy(bif, &sc->bif, sizeof(sc->bif));
 ACPI_SERIAL_END(smbat);
 return (error);
}
