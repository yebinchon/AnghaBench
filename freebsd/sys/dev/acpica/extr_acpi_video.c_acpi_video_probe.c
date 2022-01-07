
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef scalar_t__ ACPI_OBJECT_TYPE ;
typedef int ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_METHOD ;
 int AcpiGetHandle (int ,char*,int *) ;
 int AcpiGetType (int ,scalar_t__*) ;
 int ENXIO ;
 scalar_t__ acpi_disabled (char*) ;
 int acpi_get_handle (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
acpi_video_probe(device_t dev)
{
 ACPI_HANDLE devh, h;
 ACPI_OBJECT_TYPE t_dos;

 devh = acpi_get_handle(dev);
 if (acpi_disabled("video") ||
     ACPI_FAILURE(AcpiGetHandle(devh, "_DOD", &h)) ||
     ACPI_FAILURE(AcpiGetHandle(devh, "_DOS", &h)) ||
     ACPI_FAILURE(AcpiGetType(h, &t_dos)) ||
     t_dos != ACPI_TYPE_METHOD)
  return (ENXIO);

 device_set_desc(dev, "ACPI video extension");
 return (0);
}
