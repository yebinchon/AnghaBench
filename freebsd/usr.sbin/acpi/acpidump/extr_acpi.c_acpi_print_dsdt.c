
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_TABLE_HEADER ;


 char* BEGIN_COMMENT ;
 char* END_COMMENT ;
 int acpi_print_sdt (int *) ;
 int printf (char*) ;

__attribute__((used)) static void
acpi_print_dsdt(ACPI_TABLE_HEADER *dsdp)
{
 printf(BEGIN_COMMENT);
 acpi_print_sdt(dsdp);
 printf(END_COMMENT);
}
