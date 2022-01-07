
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
generic_ehci_acpi_probe(device_t self)
{
 ACPI_HANDLE h;

 if ((h = acpi_get_handle(self)) == ((void*)0) ||
     !acpi_MatchHid(h, "PNP0D20"))
  return (ENXIO);

 device_set_desc(self, "Generic EHCI Controller");
 return (BUS_PROBE_DEFAULT);
}
