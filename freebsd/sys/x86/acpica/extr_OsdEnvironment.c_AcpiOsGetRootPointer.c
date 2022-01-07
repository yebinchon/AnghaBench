
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ACPI_PHYSICAL_ADDRESS ;


 scalar_t__ acpi_get_root_from_loader () ;
 scalar_t__ acpi_get_root_from_memory () ;
 scalar_t__ acpi_root_phys ;

ACPI_PHYSICAL_ADDRESS
AcpiOsGetRootPointer(void)
{

 if (acpi_root_phys == 0) {
  acpi_root_phys = acpi_get_root_from_loader();
  if (acpi_root_phys == 0)
   acpi_root_phys = acpi_get_root_from_memory();
 }

 return (acpi_root_phys);
}
