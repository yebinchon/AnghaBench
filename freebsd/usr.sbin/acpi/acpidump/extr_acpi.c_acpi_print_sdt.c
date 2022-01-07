
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Length; int Revision; int Checksum; int OemRevision; int AslCompilerRevision; int AslCompilerId; int OemTableId; int OemId; int Signature; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;


 int ACPI_NAMESEG_SIZE ;
 int ACPI_OEM_ID_SIZE ;
 int ACPI_OEM_TABLE_ID_SIZE ;
 int acpi_print_string (int ,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
acpi_print_sdt(ACPI_TABLE_HEADER *sdp)
{
 printf("  ");
 acpi_print_string(sdp->Signature, ACPI_NAMESEG_SIZE);
 printf(": Length=%d, Revision=%d, Checksum=%d,\n",
        sdp->Length, sdp->Revision, sdp->Checksum);
 printf("\tOEMID=");
 acpi_print_string(sdp->OemId, ACPI_OEM_ID_SIZE);
 printf(", OEM Table ID=");
 acpi_print_string(sdp->OemTableId, ACPI_OEM_TABLE_ID_SIZE);
 printf(", OEM Revision=0x%x,\n", sdp->OemRevision);
 printf("\tCreator ID=");
 acpi_print_string(sdp->AslCompilerId, ACPI_NAMESEG_SIZE);
 printf(", Creator Revision=0x%x\n", sdp->AslCompilerRevision);
}
