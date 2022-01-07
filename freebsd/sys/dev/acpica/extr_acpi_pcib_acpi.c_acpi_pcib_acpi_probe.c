
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_4__ {int Flags; } ;
typedef int * ACPI_HANDLE ;
typedef TYPE_1__ ACPI_DEVICE_INFO ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_PCI_ROOT_BRIDGE ;
 int AcpiGetObjectInfo (int *,TYPE_1__**) ;
 int AcpiOsFree (TYPE_1__*) ;
 int ENXIO ;
 scalar_t__ acpi_disabled (char*) ;
 int * acpi_get_handle (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_cfgregopen () ;

__attribute__((used)) static int
acpi_pcib_acpi_probe(device_t dev)
{
    ACPI_DEVICE_INFO *devinfo;
    ACPI_HANDLE h;
    int root;

    if (acpi_disabled("pcib") || (h = acpi_get_handle(dev)) == ((void*)0) ||
 ACPI_FAILURE(AcpiGetObjectInfo(h, &devinfo)))
 return (ENXIO);
    root = (devinfo->Flags & ACPI_PCI_ROOT_BRIDGE) != 0;
    AcpiOsFree(devinfo);
    if (!root || pci_cfgregopen() == 0)
 return (ENXIO);

    device_set_desc(dev, "ACPI Host-PCI bridge");
    return (0);
}
