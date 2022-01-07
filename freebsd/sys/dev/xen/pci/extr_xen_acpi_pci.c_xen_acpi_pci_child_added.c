
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int acpi_pci_child_added (int ,int ) ;
 int xen_pci_child_added_method (int ,int ) ;

__attribute__((used)) static void
xen_acpi_pci_child_added(device_t dev, device_t child)
{

 acpi_pci_child_added(dev, child);
 xen_pci_child_added_method(dev, child);
}
