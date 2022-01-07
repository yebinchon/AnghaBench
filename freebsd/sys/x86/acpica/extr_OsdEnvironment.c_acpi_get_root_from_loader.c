
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u_long ;


 scalar_t__ TUNABLE_ULONG_FETCH (char*,long*) ;
 scalar_t__ resource_long_value (char*,int ,char*,long*) ;

__attribute__((used)) static u_long
acpi_get_root_from_loader(void)
{
 long acpi_root;

 if (TUNABLE_ULONG_FETCH("acpi.rsdp", &acpi_root))
  return (acpi_root);
 if (resource_long_value("acpi", 0, "rsdp", &acpi_root) == 0)
  return (acpi_root);

 return (0);
}
