
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Uid; int Gpe; char* Id; int Data; int Control; } ;
typedef int ACPI_TABLE_HEADER ;
typedef TYPE_1__ ACPI_TABLE_ECDT ;


 char* BEGIN_COMMENT ;
 char* END_COMMENT ;
 int acpi_print_gas (int *) ;
 int acpi_print_sdt (int *) ;
 int printf (char*,...) ;

__attribute__((used)) static void
acpi_handle_ecdt(ACPI_TABLE_HEADER *sdp)
{
 ACPI_TABLE_ECDT *ecdt;

 printf(BEGIN_COMMENT);
 acpi_print_sdt(sdp);
 ecdt = (ACPI_TABLE_ECDT *)sdp;
 printf("\tEC_CONTROL=");
 acpi_print_gas(&ecdt->Control);
 printf("\n\tEC_DATA=");
 acpi_print_gas(&ecdt->Data);
 printf("\n\tUID=%#x, ", ecdt->Uid);
 printf("GPE_BIT=%#x\n", ecdt->Gpe);
 printf("\tEC_ID=%s\n", ecdt->Id);
 printf(END_COMMENT);
}
