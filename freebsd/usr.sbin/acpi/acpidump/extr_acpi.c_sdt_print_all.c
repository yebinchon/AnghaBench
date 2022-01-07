
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_TABLE_HEADER ;


 int acpi_handle_rsdt (int *) ;

void
sdt_print_all(ACPI_TABLE_HEADER *rsdp)
{
 acpi_handle_rsdt(rsdp);
}
