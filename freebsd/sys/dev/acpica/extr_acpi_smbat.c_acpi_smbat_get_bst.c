
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int state; int rate; int cap; int volt; } ;
struct acpi_smbat_softc {TYPE_1__ bst; int bst_lastupdated; } ;
struct acpi_bst {int dummy; } ;
typedef int int16_t ;
typedef int device_t ;


 int ACPI_BATT_STAT_CHARGING ;
 int ACPI_BATT_STAT_CRITICAL ;
 int ACPI_BATT_STAT_DISCHARG ;
 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int ENXIO ;
 int SMBATT_ADDRESS ;
 int SMBATT_BM_CAPACITY_MODE ;
 int SMBATT_BS_DISCHARGING ;
 int SMBATT_BS_REMAINING_CAPACITY_ALARM ;
 int SMBATT_CMD_BATTERY_MODE ;
 int SMBATT_CMD_BATTERY_STATUS ;
 int SMBATT_CMD_CURRENT ;
 int SMBATT_CMD_REMAINING_CAPACITY ;
 int SMBATT_CMD_VOLTAGE ;
 int acpi_smbat_info_expired (int *) ;
 int acpi_smbat_info_updated (int *) ;
 scalar_t__ acpi_smbus_read_2 (struct acpi_smbat_softc*,int ,int ,int*) ;
 struct acpi_smbat_softc* device_get_softc (int ) ;
 int memcpy (struct acpi_bst*,TYPE_1__*,int) ;
 int smbat ;

__attribute__((used)) static int
acpi_smbat_get_bst(device_t dev, struct acpi_bst *bst)
{
 struct acpi_smbat_softc *sc;
 int error;
 uint32_t factor;
 int16_t val;
 uint8_t addr;

 ACPI_SERIAL_BEGIN(smbat);

 addr = SMBATT_ADDRESS;
 error = ENXIO;
 sc = device_get_softc(dev);

 if (!acpi_smbat_info_expired(&sc->bst_lastupdated)) {
  error = 0;
  goto out;
 }

 if (acpi_smbus_read_2(sc, addr, SMBATT_CMD_BATTERY_MODE, &val))
  goto out;
 if (val & SMBATT_BM_CAPACITY_MODE)
  factor = 10;
 else
  factor = 1;


 if (acpi_smbus_read_2(sc, addr, SMBATT_CMD_BATTERY_STATUS, &val))
  goto out;

 sc->bst.state = 0;
 if (val & SMBATT_BS_DISCHARGING)
  sc->bst.state |= ACPI_BATT_STAT_DISCHARG;

 if (val & SMBATT_BS_REMAINING_CAPACITY_ALARM)
  sc->bst.state |= ACPI_BATT_STAT_CRITICAL;





 if (acpi_smbus_read_2(sc, addr, SMBATT_CMD_CURRENT, &val))
  goto out;

 if (val > 0) {
  sc->bst.rate = val * factor;
  sc->bst.state &= ~SMBATT_BS_DISCHARGING;
  sc->bst.state |= ACPI_BATT_STAT_CHARGING;
 } else if (val < 0)
  sc->bst.rate = (-val) * factor;
 else
  sc->bst.rate = 0;

 if (acpi_smbus_read_2(sc, addr, SMBATT_CMD_REMAINING_CAPACITY, &val))
  goto out;
 sc->bst.cap = val * factor;

 if (acpi_smbus_read_2(sc, addr, SMBATT_CMD_VOLTAGE, &val))
  goto out;
 sc->bst.volt = val;

 acpi_smbat_info_updated(&sc->bst_lastupdated);
 error = 0;

out:
 if (error == 0)
  memcpy(bst, &sc->bst, sizeof(sc->bst));
 ACPI_SERIAL_END(smbat);
 return (error);
}
