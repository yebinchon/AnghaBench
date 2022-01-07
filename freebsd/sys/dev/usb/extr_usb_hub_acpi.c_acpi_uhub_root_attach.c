
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_uhub_softc {int * ah; } ;
typedef int device_t ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ENXIO ;
 int acpi_uhub_attach_common (int ) ;
 int acpi_uhub_detach (int ) ;
 int acpi_uhub_find_rh (int ,int **) ;
 struct acpi_uhub_softc* device_get_softc (int ) ;
 int uhub_attach (int ) ;

__attribute__((used)) static int
acpi_uhub_root_attach(device_t dev)
{
 int ret;
 struct acpi_uhub_softc *sc = device_get_softc(dev);

 if (ACPI_FAILURE(acpi_uhub_find_rh(dev, &sc->ah)) ||
     (sc->ah == ((void*)0))) {
  return (ENXIO);
 }
 if ((ret = uhub_attach(dev)) != 0) {
  return (ret);
 }

 if ((ret = acpi_uhub_attach_common(dev)) != 0) {
  acpi_uhub_detach(dev);
 }
 return ret;
}
