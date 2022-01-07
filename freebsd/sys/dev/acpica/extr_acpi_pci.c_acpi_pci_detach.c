
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ACPI_SYSTEM_NOTIFY ;
 int ACPI_TYPE_DEVICE ;
 int AcpiRemoveNotifyHandler (int ,int ,int ) ;
 int AcpiWalkNamespace (int ,int ,int,int ,int *,int ,int *) ;
 int acpi_get_handle (int ) ;
 int acpi_pci_bus_notify_handler ;
 int acpi_pci_remove_notify_handler ;
 int pci_detach (int ) ;

__attribute__((used)) static int
acpi_pci_detach(device_t dev)
{

 AcpiWalkNamespace(ACPI_TYPE_DEVICE, acpi_get_handle(dev), 1,
     acpi_pci_remove_notify_handler, ((void*)0), dev, ((void*)0));
 AcpiRemoveNotifyHandler(acpi_get_handle(dev), ACPI_SYSTEM_NOTIFY,
     acpi_pci_bus_notify_handler);
 return (pci_detach(dev));
}
