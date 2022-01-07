
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Address; int Flags; } ;
typedef TYPE_1__ ACPI_TABLE_MADT ;
typedef int ACPI_TABLE_HEADER ;


 int ACPI_MADT_PCAT_COMPAT ;
 char* BEGIN_COMMENT ;
 char* END_COMMENT ;
 int acpi_print_madt ;
 int acpi_print_sdt (int *) ;
 int acpi_walk_subtables (int *,TYPE_1__*,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
acpi_handle_madt(ACPI_TABLE_HEADER *sdp)
{
 ACPI_TABLE_MADT *madt;

 printf(BEGIN_COMMENT);
 acpi_print_sdt(sdp);
 madt = (ACPI_TABLE_MADT *)sdp;
 printf("\tLocal APIC ADDR=0x%08x\n", madt->Address);
 printf("\tFlags={");
 if (madt->Flags & ACPI_MADT_PCAT_COMPAT)
  printf("PC-AT");
 printf("}\n");
 acpi_walk_subtables(sdp, (madt + 1), acpi_print_madt);
 printf(END_COMMENT);
}
