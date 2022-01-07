
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_TABLE_NFIT ;
typedef int ACPI_TABLE_HEADER ;


 char* BEGIN_COMMENT ;
 char* END_COMMENT ;
 int acpi_print_nfit ;
 int acpi_print_sdt (int *) ;
 int acpi_walk_nfit (int *,int *,int ) ;
 int printf (char*) ;

__attribute__((used)) static void
acpi_handle_nfit(ACPI_TABLE_HEADER *sdp)
{
 ACPI_TABLE_NFIT *nfit;

 printf(BEGIN_COMMENT);
 acpi_print_sdt(sdp);
 nfit = (ACPI_TABLE_NFIT *)sdp;
 acpi_walk_nfit(sdp, (nfit + 1), acpi_print_nfit);
 printf(END_COMMENT);
}
