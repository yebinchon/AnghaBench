
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_uhub_softc {int * ah; } ;
typedef int device_t ;


 int ENXIO ;
 int * acpi_get_handle (int ) ;
 int acpi_uhub_attach_common (int ) ;
 int acpi_uhub_detach (int ) ;
 struct acpi_uhub_softc* device_get_softc (int ) ;
 int uhub_attach (int ) ;

__attribute__((used)) static int
acpi_uhub_attach(device_t dev)
{
 int ret;
 struct acpi_uhub_softc *sc = device_get_softc(dev);

 sc->ah = acpi_get_handle(dev);

 if (sc->ah == ((void*)0)) {
  return (ENXIO);
 }
 if ((ret = uhub_attach(dev)) != 0) {
  return (ret);
 }

 if ((ret = acpi_uhub_attach_common(dev)) != 0) {
  acpi_uhub_detach(dev);
 }

 return (ret);
}
