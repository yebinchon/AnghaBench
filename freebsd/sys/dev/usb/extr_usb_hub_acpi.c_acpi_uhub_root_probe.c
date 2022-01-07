
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int ACPI_STATUS ;
typedef int * ACPI_HANDLE ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ acpi_disabled (char*) ;
 int acpi_uhub_find_rh (int ,int **) ;
 scalar_t__ uhub_probe (int ) ;

__attribute__((used)) static int
acpi_uhub_root_probe(device_t dev)
{
 ACPI_STATUS status;
 ACPI_HANDLE ah;

 if (acpi_disabled("usb"))
  return (ENXIO);

 status = acpi_uhub_find_rh(dev, &ah);
 if (ACPI_SUCCESS(status) && ah != ((void*)0) &&
     uhub_probe(dev) <= 0) {

  return (BUS_PROBE_DEFAULT + 1);
 }
 return (ENXIO);
}
