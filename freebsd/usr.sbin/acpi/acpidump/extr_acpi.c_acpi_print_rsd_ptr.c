
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_3__ {int Revision; int RsdtPhysicalAddress; int Checksum; int ExtendedChecksum; int Length; scalar_t__ XsdtPhysicalAddress; int OemId; } ;
typedef TYPE_1__ ACPI_TABLE_RSDP ;


 int ACPI_OEM_ID_SIZE ;
 char* BEGIN_COMMENT ;
 char* END_COMMENT ;
 int acpi_print_string (int ,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
acpi_print_rsd_ptr(ACPI_TABLE_RSDP *rp)
{
 printf(BEGIN_COMMENT);
 printf("  RSD PTR: OEM=");
 acpi_print_string(rp->OemId, ACPI_OEM_ID_SIZE);
 printf(", ACPI_Rev=%s (%d)\n", rp->Revision < 2 ? "1.0x" : "2.0x",
        rp->Revision);
 if (rp->Revision < 2) {
  printf("\tRSDT=0x%08x, cksum=%u\n", rp->RsdtPhysicalAddress,
      rp->Checksum);
 } else {
  printf("\tXSDT=0x%016jx, length=%u, cksum=%u\n",
      (uintmax_t)rp->XsdtPhysicalAddress, rp->Length,
      rp->ExtendedChecksum);
 }
 printf(END_COMMENT);
}
