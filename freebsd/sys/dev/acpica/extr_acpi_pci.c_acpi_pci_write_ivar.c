
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_pci_devinfo {int ap_flags; int ap_handle; } ;
typedef int device_t ;
typedef int ACPI_HANDLE ;




 struct acpi_pci_devinfo* device_get_ivars (int ) ;
 int pci_write_ivar (int ,int ,int,uintptr_t) ;

__attribute__((used)) static int
acpi_pci_write_ivar(device_t dev, device_t child, int which, uintptr_t value)
{
    struct acpi_pci_devinfo *dinfo;

    dinfo = device_get_ivars(child);
    switch (which) {
    case 128:
 dinfo->ap_handle = (ACPI_HANDLE)value;
 return (0);
    case 129:
 dinfo->ap_flags = (int)value;
 return (0);
    }
    return (pci_write_ivar(dev, child, which, value));
}
