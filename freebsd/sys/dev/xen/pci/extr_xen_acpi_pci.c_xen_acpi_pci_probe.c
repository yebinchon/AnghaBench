
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_SPECIFIC ;
 int ENXIO ;
 int * acpi_get_handle (int ) ;
 int device_set_desc (int ,char*) ;
 int xen_pv_domain () ;

__attribute__((used)) static int
xen_acpi_pci_probe(device_t dev)
{

 if (!xen_pv_domain())
  return (ENXIO);
 if (acpi_get_handle(dev) == ((void*)0))
  return (ENXIO);

 device_set_desc(dev, "Xen ACPI PCI bus");

 return (BUS_PROBE_SPECIFIC);
}
