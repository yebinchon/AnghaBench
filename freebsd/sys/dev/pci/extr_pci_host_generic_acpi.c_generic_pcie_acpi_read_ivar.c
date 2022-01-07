
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {uintptr_t bus_start; uintptr_t ecam; } ;
struct generic_pcie_acpi_softc {TYPE_1__ base; } ;
typedef int device_t ;


 int ENOENT ;
 int PCIB_IVAR_BUS ;
 int PCIB_IVAR_DOMAIN ;
 scalar_t__ bootverbose ;
 struct generic_pcie_acpi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
generic_pcie_acpi_read_ivar(device_t dev, device_t child, int index,
    uintptr_t *result)
{
 struct generic_pcie_acpi_softc *sc;

 sc = device_get_softc(dev);

 if (index == PCIB_IVAR_BUS) {
  *result = sc->base.bus_start;
  return (0);
 }

 if (index == PCIB_IVAR_DOMAIN) {
  *result = sc->base.ecam;
  return (0);
 }

 if (bootverbose)
  device_printf(dev, "ERROR: Unknown index %d.\n", index);
 return (ENOENT);
}
