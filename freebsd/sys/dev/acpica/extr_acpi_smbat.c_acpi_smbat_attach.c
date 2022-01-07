
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct acpi_smbat_softc {int sb_base_addr; int bst_lastupdated; int bif_lastupdated; int * ec_dev; } ;
typedef int device_t ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ENXIO ;
 int acpi_GetInteger (int ,char*,int*) ;
 scalar_t__ acpi_battery_register (int ) ;
 int acpi_get_handle (int ) ;
 int devclass_find (char*) ;
 int * devclass_get_device (int ,int ) ;
 struct acpi_smbat_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int timespecclear (int *) ;

__attribute__((used)) static int
acpi_smbat_attach(device_t dev)
{
 struct acpi_smbat_softc *sc;
 uint32_t base;

 sc = device_get_softc(dev);
 if (ACPI_FAILURE(acpi_GetInteger(acpi_get_handle(dev), "_EC", &base))) {
  device_printf(dev, "cannot get EC base address\n");
  return (ENXIO);
 }
 sc->sb_base_addr = (base >> 8) & 0xff;


 sc->ec_dev = devclass_get_device(devclass_find("acpi_ec"), 0);
 if (sc->ec_dev == ((void*)0)) {
  device_printf(dev, "cannot find EC device\n");
  return (ENXIO);
 }

 timespecclear(&sc->bif_lastupdated);
 timespecclear(&sc->bst_lastupdated);

 if (acpi_battery_register(dev) != 0) {
  device_printf(dev, "cannot register battery\n");
  return (ENXIO);
 }
 return (0);
}
