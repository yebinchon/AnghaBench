
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int* Pointer; int Length; } ;
struct TYPE_7__ {int Count; } ;
struct TYPE_8__ {TYPE_1__ Package; } ;
typedef scalar_t__ ACPI_STATUS ;
typedef TYPE_2__ ACPI_OBJECT ;
typedef int ACPI_HANDLE ;
typedef TYPE_3__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_PKG_VALID (TYPE_2__*,int) ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ AcpiEvaluateObject (int ,char*,int *,TYPE_3__*) ;
 char* AcpiFormatException (scalar_t__) ;
 int* AcpiOsAllocate (int) ;
 int AcpiOsFree (int*) ;
 scalar_t__ acpi_PkgInt32 (TYPE_2__*,int,int*) ;
 char* acpi_name (int ) ;
 int printf (char*,char*,...) ;

__attribute__((used)) static int
vo_get_brightness_levels(ACPI_HANDLE handle, int **levelp)
{
 ACPI_STATUS status;
 ACPI_BUFFER bcl_buf;
 ACPI_OBJECT *res;
 int num, i, n, *levels;

 bcl_buf.Length = ACPI_ALLOCATE_BUFFER;
 bcl_buf.Pointer = ((void*)0);
 status = AcpiEvaluateObject(handle, "_BCL", ((void*)0), &bcl_buf);
 if (ACPI_FAILURE(status)) {
  if (status != AE_NOT_FOUND)
   printf("can't evaluate %s._BCL - %s\n",
          acpi_name(handle), AcpiFormatException(status));
  goto out;
 }
 res = (ACPI_OBJECT *)bcl_buf.Pointer;
 if (!ACPI_PKG_VALID(res, 2)) {
  printf("evaluation of %s._BCL makes no sense\n",
         acpi_name(handle));
  goto out;
 }
 num = res->Package.Count;
 if (num < 2 || levelp == ((void*)0))
  goto out;
 levels = AcpiOsAllocate(num * sizeof(*levels));
 if (levels == ((void*)0))
  goto out;
 for (i = 0, n = 0; i < num; i++)
  if (acpi_PkgInt32(res, i, &levels[n]) == 0)
   n++;
 if (n < 2) {
  AcpiOsFree(levels);
  goto out;
 }
 *levelp = levels;
 return (n);

out:
 if (bcl_buf.Pointer != ((void*)0))
  AcpiOsFree(bcl_buf.Pointer);
 return (0);
}
