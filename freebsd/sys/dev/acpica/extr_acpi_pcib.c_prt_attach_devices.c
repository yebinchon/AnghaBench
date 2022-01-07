
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * device_t ;
struct TYPE_3__ {char* Source; int Pin; int Address; int SourceIndex; } ;
typedef TYPE_1__ ACPI_PCI_ROUTING_TABLE ;
typedef int ACPI_HANDLE ;


 int ACPI_ADR_PCI_SLOT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_ROOT_OBJECT ;
 int AcpiGetHandle (int ,char*,int *) ;
 int * acpi_get_device (int ) ;
 int acpi_name (int ) ;
 int acpi_pci_link_add_reference (int *,int ,int *,int ,int ) ;
 int device_printf (int *,char*,int ) ;
 int device_probe_and_attach (int *) ;

__attribute__((used)) static void
prt_attach_devices(ACPI_PCI_ROUTING_TABLE *entry, void *arg)
{
    ACPI_HANDLE handle;
    device_t child, pcib;
    int error;


    if (entry->Source[0] == '\0')
 return;





    if (entry->SourceIndex != 0)
 return;


    pcib = (device_t)arg;
    if (ACPI_FAILURE(AcpiGetHandle(ACPI_ROOT_OBJECT, entry->Source, &handle)))
 return;
    child = acpi_get_device(handle);
    if (child == ((void*)0))
 return;


    error = device_probe_and_attach(child);
    if (error != 0) {
 device_printf(pcib, "failed to force attach of %s\n",
     acpi_name(handle));
 return;
    }


    acpi_pci_link_add_reference(child, entry->SourceIndex, pcib,
 ACPI_ADR_PCI_SLOT(entry->Address), entry->Pin);
}
