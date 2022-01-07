
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 scalar_t__ PCIC_BRIDGE ;
 scalar_t__ PCIS_BRIDGE_PCI ;
 scalar_t__ acpi_disabled (char*) ;
 int * acpi_get_handle (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_cfgregopen () ;
 scalar_t__ pci_get_class (int ) ;
 scalar_t__ pci_get_subclass (int ) ;

__attribute__((used)) static int
acpi_pcib_pci_probe(device_t dev)
{

    if (pci_get_class(dev) != PCIC_BRIDGE ||
 pci_get_subclass(dev) != PCIS_BRIDGE_PCI ||
 acpi_disabled("pci"))
 return (ENXIO);
    if (acpi_get_handle(dev) == ((void*)0))
 return (ENXIO);
    if (pci_cfgregopen() == 0)
 return (ENXIO);

    device_set_desc(dev, "ACPI PCI-PCI bridge");
    return (-1000);
}
