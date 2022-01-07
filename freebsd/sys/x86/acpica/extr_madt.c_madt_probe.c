
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_SIG_MADT ;
 int ENXIO ;
 scalar_t__ acpi_find_table (int ) ;
 scalar_t__ madt_physaddr ;

__attribute__((used)) static int
madt_probe(void)
{

 madt_physaddr = acpi_find_table(ACPI_SIG_MADT);
 if (madt_physaddr == 0)
  return (ENXIO);
 return (-50);
}
