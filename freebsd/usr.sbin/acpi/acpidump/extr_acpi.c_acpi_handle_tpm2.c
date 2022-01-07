
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int StartMethod; int ControlAddress; } ;
typedef TYPE_1__ ACPI_TABLE_TPM2 ;
typedef int ACPI_TABLE_HEADER ;


 char* BEGIN_COMMENT ;
 char* END_COMMENT ;
 int acpi_print_sdt (int *) ;
 int printf (char*,...) ;

__attribute__((used)) static void acpi_handle_tpm2(ACPI_TABLE_HEADER *sdp)
{
 ACPI_TABLE_TPM2 *tpm2;

 printf (BEGIN_COMMENT);
 acpi_print_sdt(sdp);
 tpm2 = (ACPI_TABLE_TPM2 *) sdp;
 printf ("\t\tControlArea=%jx\n", tpm2->ControlAddress);
 printf ("\t\tStartMethod=%x\n", tpm2->StartMethod);
 printf (END_COMMENT);
}
