
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int TableRevision; } ;
typedef TYPE_1__ ACPI_TABLE_SRAT ;
typedef int ACPI_TABLE_HEADER ;


 char* BEGIN_COMMENT ;
 char* END_COMMENT ;
 int acpi_print_sdt (int *) ;
 int acpi_print_srat ;
 int acpi_walk_subtables (int *,TYPE_1__*,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
acpi_handle_srat(ACPI_TABLE_HEADER *sdp)
{
 ACPI_TABLE_SRAT *srat;

 printf(BEGIN_COMMENT);
 acpi_print_sdt(sdp);
 srat = (ACPI_TABLE_SRAT *)sdp;
 printf("\tTable Revision=%d\n", srat->TableRevision);
 acpi_walk_subtables(sdp, (srat + 1), acpi_print_srat);
 printf(END_COMMENT);
}
