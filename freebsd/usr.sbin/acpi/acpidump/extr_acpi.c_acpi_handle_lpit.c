
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_TABLE_LPIT ;
typedef int ACPI_TABLE_HEADER ;


 char* BEGIN_COMMENT ;
 char* END_COMMENT ;
 int acpi_print_lpit ;
 int acpi_print_sdt (int *) ;
 int acpi_walk_lpit (int *,int *,int ) ;
 int printf (char*) ;

__attribute__((used)) static void
acpi_handle_lpit(ACPI_TABLE_HEADER *sdp)
{
 ACPI_TABLE_LPIT *lpit;

 printf(BEGIN_COMMENT);
 acpi_print_sdt(sdp);
 lpit = (ACPI_TABLE_LPIT *)sdp;
 acpi_walk_lpit(sdp, (lpit + 1), acpi_print_lpit);

 printf(END_COMMENT);
}
