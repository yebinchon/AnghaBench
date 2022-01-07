
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int ACPI_PHYSICAL_ADDRESS ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int AcpiFindRootPointer (int *) ;

__attribute__((used)) static u_long
acpi_get_root_from_memory(void)
{
 ACPI_PHYSICAL_ADDRESS acpi_root;

 if (ACPI_SUCCESS(AcpiFindRootPointer(&acpi_root)))
  return (acpi_root);

 return (0);
}
