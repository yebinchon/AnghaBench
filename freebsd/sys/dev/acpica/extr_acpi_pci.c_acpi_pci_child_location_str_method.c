
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_pci_devinfo {scalar_t__ ap_handle; } ;
typedef int device_t ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int acpi_GetInteger (scalar_t__,char*,int*) ;
 char* acpi_name (scalar_t__) ;
 struct acpi_pci_devinfo* device_get_ivars (int ) ;
 int pci_child_location_str_method (int ,int ,char*,size_t) ;
 int snprintf (char*,int,char*,int) ;
 int strlcat (char*,char*,size_t) ;

__attribute__((used)) static int
acpi_pci_child_location_str_method(device_t cbdev, device_t child, char *buf,
    size_t buflen)
{
    struct acpi_pci_devinfo *dinfo = device_get_ivars(child);
    int pxm;
    char buf2[32];

    pci_child_location_str_method(cbdev, child, buf, buflen);

    if (dinfo->ap_handle) {
        strlcat(buf, " handle=", buflen);
        strlcat(buf, acpi_name(dinfo->ap_handle), buflen);

        if (ACPI_SUCCESS(acpi_GetInteger(dinfo->ap_handle, "_PXM", &pxm))) {
                snprintf(buf2, 32, " _PXM=%d", pxm);
                strlcat(buf, buf2, buflen);
        }
    }
    return (0);
}
