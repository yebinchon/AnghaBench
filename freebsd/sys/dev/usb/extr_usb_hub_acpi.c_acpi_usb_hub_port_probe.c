
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;


 int ACPI_TYPE_DEVICE ;
 int AcpiWalkNamespace (int ,int ,int,int ,int *,int ,int *) ;
 int acpi_usb_hub_port_probe_cb ;

__attribute__((used)) static ACPI_STATUS
acpi_usb_hub_port_probe(device_t dev, ACPI_HANDLE ah)
{
 return (AcpiWalkNamespace(ACPI_TYPE_DEVICE,
     ah, 1,
     acpi_usb_hub_port_probe_cb,
     ((void*)0), dev, ((void*)0)));
}
