
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int * ACPI_HANDLE ;


 scalar_t__ ACPI_MATCHHID_NOMATCH ;
 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int XHCI_HC_DEVSTR ;
 scalar_t__ acpi_MatchHid (int *,char*) ;
 int * acpi_get_handle (int ) ;
 int device_set_desc (int ,int ) ;

__attribute__((used)) static int
generic_xhci_acpi_probe(device_t dev)
{
 ACPI_HANDLE h;

 if ((h = acpi_get_handle(dev)) == ((void*)0) ||
     acpi_MatchHid(h, "PNP0D10") == ACPI_MATCHHID_NOMATCH)
  return (ENXIO);

 device_set_desc(dev, XHCI_HC_DEVSTR);

 return (BUS_PROBE_DEFAULT);
}
