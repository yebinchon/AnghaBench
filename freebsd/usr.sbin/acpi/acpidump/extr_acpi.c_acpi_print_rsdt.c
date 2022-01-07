
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_8__ {int Length; } ;
struct TYPE_7__ {int * TableOffsetEntry; } ;
struct TYPE_6__ {int * TableOffsetEntry; } ;
typedef TYPE_1__ ACPI_TABLE_XSDT ;
typedef TYPE_2__ ACPI_TABLE_RSDT ;
typedef TYPE_3__ ACPI_TABLE_HEADER ;


 char* BEGIN_COMMENT ;
 char* END_COMMENT ;
 int acpi_print_sdt (TYPE_3__*) ;
 int addr_size ;
 int le32toh (int ) ;
 scalar_t__ le64toh (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
acpi_print_rsdt(ACPI_TABLE_HEADER *rsdp)
{
 ACPI_TABLE_RSDT *rsdt;
 ACPI_TABLE_XSDT *xsdt;
 int i, entries;

 rsdt = (ACPI_TABLE_RSDT *)rsdp;
 xsdt = (ACPI_TABLE_XSDT *)rsdp;
 printf(BEGIN_COMMENT);
 acpi_print_sdt(rsdp);
 entries = (rsdp->Length - sizeof(ACPI_TABLE_HEADER)) / addr_size;
 printf("\tEntries={ ");
 for (i = 0; i < entries; i++) {
  if (i > 0)
   printf(", ");
  if (addr_size == 4)
   printf("0x%08x", le32toh(rsdt->TableOffsetEntry[i]));
  else
   printf("0x%016jx",
       (uintmax_t)le64toh(xsdt->TableOffsetEntry[i]));
 }
 printf(" }\n");
 printf(END_COMMENT);
}
