
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_pci_devinfo {int ap_handle; } ;
typedef scalar_t__ device_t ;


 int AcpiDetachData (int ,int ) ;
 int acpi_fake_objhandler ;
 scalar_t__ acpi_get_device (int ) ;
 struct acpi_pci_devinfo* device_get_ivars (scalar_t__) ;
 int pci_child_deleted (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
acpi_pci_child_deleted(device_t dev, device_t child)
{
 struct acpi_pci_devinfo *dinfo = device_get_ivars(child);

 if (acpi_get_device(dinfo->ap_handle) == child)
  AcpiDetachData(dinfo->ap_handle, acpi_fake_objhandler);
 pci_child_deleted(dev, child);
}
