
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int Length; int Signature; } ;
struct TYPE_11__ {int XDsdt; int Dsdt; int XFacs; int Facs; } ;
struct TYPE_10__ {int Length; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;
typedef TYPE_2__ ACPI_TABLE_FADT ;
typedef TYPE_3__ ACPI_TABLE_FACS ;


 int ACPI_SIG_FACS ;
 scalar_t__ acpi_checksum (TYPE_1__*,int ) ;
 int acpi_get_fadt_revision (TYPE_2__*) ;
 scalar_t__ acpi_map_sdt (int ) ;
 int acpi_print_dsdt (TYPE_1__*) ;
 int acpi_print_facs (TYPE_3__*) ;
 int acpi_print_fadt (TYPE_1__*) ;
 int errx (int,char*) ;
 scalar_t__ memcmp (int ,int ,int) ;

__attribute__((used)) static void
acpi_handle_fadt(ACPI_TABLE_HEADER *sdp)
{
 ACPI_TABLE_HEADER *dsdp;
 ACPI_TABLE_FACS *facs;
 ACPI_TABLE_FADT *fadt;
 int fadt_revision;

 fadt = (ACPI_TABLE_FADT *)sdp;
 acpi_print_fadt(sdp);

 fadt_revision = acpi_get_fadt_revision(fadt);
 if (fadt_revision == 1)
  facs = (ACPI_TABLE_FACS *)acpi_map_sdt(fadt->Facs);
 else
  facs = (ACPI_TABLE_FACS *)acpi_map_sdt(fadt->XFacs);
 if (memcmp(facs->Signature, ACPI_SIG_FACS, 4) != 0 || facs->Length < 64)
  errx(1, "FACS is corrupt");
 acpi_print_facs(facs);

 if (fadt_revision == 1)
  dsdp = (ACPI_TABLE_HEADER *)acpi_map_sdt(fadt->Dsdt);
 else
  dsdp = (ACPI_TABLE_HEADER *)acpi_map_sdt(fadt->XDsdt);
 if (acpi_checksum(dsdp, dsdp->Length))
  errx(1, "DSDT is corrupt");
 acpi_print_dsdt(dsdp);
}
