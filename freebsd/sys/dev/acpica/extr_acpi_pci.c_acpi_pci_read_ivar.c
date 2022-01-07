
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_pci_devinfo {int ap_flags; int ap_handle; } ;
typedef int device_t ;




 struct acpi_pci_devinfo* device_get_ivars (int ) ;
 int pci_read_ivar (int ,int ,int,uintptr_t*) ;

__attribute__((used)) static int
acpi_pci_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
    struct acpi_pci_devinfo *dinfo;

    dinfo = device_get_ivars(child);
    switch (which) {
    case 128:
 *result = (uintptr_t)dinfo->ap_handle;
 return (0);
    case 129:
 *result = (uintptr_t)dinfo->ap_flags;
 return (0);
    }
    return (pci_read_ivar(dev, child, which, result));
}
