
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Facs; int XFacs; } ;
typedef TYPE_1__ ACPI_TABLE_FADT ;


 int addr_size ;

__attribute__((used)) static int
acpi_get_fadt_revision(ACPI_TABLE_FADT *fadt)
{
 int fadt_revision;


 if (addr_size == 8) {
  fadt_revision = 2;
  if (fadt->Facs != 0 &&
      (fadt->XFacs & 0xffffffff) != fadt->Facs)
   fadt_revision = 1;
 } else
  fadt_revision = 1;
 return (fadt_revision);
}
