
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int * ACPI_HANDLE ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int acpi_MatchHid (int *,char*) ;
 int * acpi_get_handle (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
vtmmio_acpi_probe(device_t dev)
{
 ACPI_HANDLE h;

 if ((h = acpi_get_handle(dev)) == ((void*)0))
  return (ENXIO);

 if (!acpi_MatchHid(h, "LNRO0005"))
  return (ENXIO);

 device_set_desc(dev, "VirtIO MMIO adapter");
 return (BUS_PROBE_DEFAULT);
}
