
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int driver_t ;
typedef int device_t ;
struct TYPE_10__ {scalar_t__ DutyWidth; } ;
struct TYPE_9__ {int * Pointer; int Length; } ;
struct TYPE_7__ {int PblkLength; scalar_t__ PblkAddress; } ;
struct TYPE_8__ {TYPE_1__ Processor; } ;
typedef TYPE_2__ ACPI_OBJECT ;
typedef int * ACPI_HANDLE ;
typedef TYPE_3__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 scalar_t__ ACPI_TYPE_PROCESSOR ;
 int AcpiEvaluateObject (int *,char*,int *,TYPE_3__*) ;
 TYPE_5__ AcpiGbl_FADT ;
 int AcpiOsFree (TYPE_2__*) ;
 int * BUS_ADD_CHILD (int ,int ,char*,int) ;
 int * acpi_get_handle (int ) ;
 scalar_t__ acpi_get_type (int ) ;
 scalar_t__ device_find_child (int ,char*,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
acpi_throttle_identify(driver_t *driver, device_t parent)
{
 ACPI_BUFFER buf;
 ACPI_HANDLE handle;
 ACPI_OBJECT *obj;


 if (device_find_child(parent, "acpi_throttle", -1))
  return;


 handle = acpi_get_handle(parent);
 if (handle == ((void*)0))
  return;
 if (AcpiGbl_FADT.DutyWidth == 0 ||
     acpi_get_type(parent) != ACPI_TYPE_PROCESSOR)
  return;





 buf.Pointer = ((void*)0);
 buf.Length = ACPI_ALLOCATE_BUFFER;
 if (ACPI_FAILURE(AcpiEvaluateObject(handle, ((void*)0), ((void*)0), &buf)))
  return;
 obj = (ACPI_OBJECT *)buf.Pointer;
 if ((obj->Processor.PblkAddress && obj->Processor.PblkLength >= 4) ||
     ACPI_SUCCESS(AcpiEvaluateObject(handle, "_PTC", ((void*)0), ((void*)0)))) {
  if (BUS_ADD_CHILD(parent, 0, "acpi_throttle", -1) == ((void*)0))
   device_printf(parent, "add throttle child failed\n");
 }
 AcpiOsFree(obj);
}
