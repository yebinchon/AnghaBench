
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int XDsdt; int Dsdt; } ;
struct TYPE_7__ {int Length; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;
typedef TYPE_2__ ACPI_TABLE_FADT ;


 scalar_t__ acpi_checksum (TYPE_1__*,int ) ;
 int acpi_get_fadt_revision (TYPE_2__*) ;
 scalar_t__ acpi_map_sdt (int ) ;
 int errx (int,char*) ;

ACPI_TABLE_HEADER *
dsdt_from_fadt(ACPI_TABLE_FADT *fadt)
{
 ACPI_TABLE_HEADER *sdt;


 if (acpi_get_fadt_revision(fadt) == 1)
  sdt = (ACPI_TABLE_HEADER *)acpi_map_sdt(fadt->Dsdt);
 else
  sdt = (ACPI_TABLE_HEADER *)acpi_map_sdt(fadt->XDsdt);
 if (acpi_checksum(sdt, sdt->Length))
  errx(1, "DSDT is corrupt\n");
 return (sdt);
}
