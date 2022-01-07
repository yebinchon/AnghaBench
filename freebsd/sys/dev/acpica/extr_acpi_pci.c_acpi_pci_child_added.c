
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ACPI_TYPE_DEVICE ;
 int AcpiWalkNamespace (int ,int ,int,int ,int *,int ,int *) ;
 int acpi_get_handle (int ) ;
 int acpi_pci_save_handle ;

void
acpi_pci_child_added(device_t dev, device_t child)
{
 AcpiWalkNamespace(ACPI_TYPE_DEVICE, acpi_get_handle(dev), 1,
     acpi_pci_save_handle, ((void*)0), child, ((void*)0));
}
