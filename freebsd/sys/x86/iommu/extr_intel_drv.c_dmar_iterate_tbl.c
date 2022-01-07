
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int (* dmar_iter_t ) (TYPE_2__*,void*) ;
struct TYPE_6__ {int Length; } ;
struct TYPE_8__ {TYPE_1__ Header; } ;
struct TYPE_7__ {scalar_t__ Length; } ;
typedef int ACPI_TABLE_HEADER ;
typedef TYPE_3__ ACPI_TABLE_DMAR ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_DMAR_HEADER ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SIG_DMAR ;
 int AcpiGetTable (int ,int,int **) ;
 int AcpiPutTable (int *) ;
 int printf (char*,scalar_t__) ;

__attribute__((used)) static void
dmar_iterate_tbl(dmar_iter_t iter, void *arg)
{
 ACPI_TABLE_DMAR *dmartbl;
 ACPI_DMAR_HEADER *dmarh;
 char *ptr, *ptrend;
 ACPI_STATUS status;

 status = AcpiGetTable(ACPI_SIG_DMAR, 1, (ACPI_TABLE_HEADER **)&dmartbl);
 if (ACPI_FAILURE(status))
  return;
 ptr = (char *)dmartbl + sizeof(*dmartbl);
 ptrend = (char *)dmartbl + dmartbl->Header.Length;
 for (;;) {
  if (ptr >= ptrend)
   break;
  dmarh = (ACPI_DMAR_HEADER *)ptr;
  if (dmarh->Length <= 0) {
   printf("dmar_identify: corrupted DMAR table, l %d\n",
       dmarh->Length);
   break;
  }
  ptr += dmarh->Length;
  if (!iter(dmarh, arg))
   break;
 }
 AcpiPutTable((ACPI_TABLE_HEADER *)dmartbl);
}
