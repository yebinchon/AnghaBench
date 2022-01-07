
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int * ACPI_HANDLE ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ acpi_disabled (char*) ;
 int * acpi_get_handle (int ) ;
 scalar_t__ uhub_probe (int ) ;

__attribute__((used)) static int
acpi_uhub_probe(device_t dev)
{
 ACPI_HANDLE ah;

 if (acpi_disabled("usb"))
  return (ENXIO);

 ah = acpi_get_handle(dev);
 if (ah == ((void*)0))
  return (ENXIO);

 if (uhub_probe(dev) <= 0) {

  return (BUS_PROBE_DEFAULT + 1);
 }
 return (ENXIO);
}
