
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct enum_callback_arg {int count; void (* callback ) (int ,UINT32,void*) ;TYPE_2__* dod_pkg; void* context; } ;
struct TYPE_8__ {int * Pointer; int Length; } ;
struct TYPE_6__ {int Count; } ;
struct TYPE_7__ {TYPE_1__ Package; } ;
typedef scalar_t__ ACPI_STATUS ;
typedef TYPE_2__ ACPI_OBJECT ;
typedef int ACPI_HANDLE ;
typedef TYPE_3__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_PKG_VALID (TYPE_2__*,int) ;
 int ACPI_SERIAL_ASSERT (int ) ;
 int ACPI_TYPE_DEVICE ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ AcpiEvaluateObject (int ,char*,int *,TYPE_3__*) ;
 char* AcpiFormatException (scalar_t__) ;
 int AcpiOsFree (int *) ;
 scalar_t__ AcpiWalkNamespace (int ,int ,int,int ,int *,struct enum_callback_arg*,int *) ;
 char* acpi_name (int ) ;
 int printf (char*,char*,...) ;
 int vid_enum_outputs_subr ;
 int video ;

__attribute__((used)) static int
vid_enum_outputs(ACPI_HANDLE handle,
   void (*callback)(ACPI_HANDLE, UINT32, void *), void *context)
{
 ACPI_STATUS status;
 ACPI_BUFFER dod_buf;
 ACPI_OBJECT *res;
 struct enum_callback_arg argset;

 ACPI_SERIAL_ASSERT(video);
 dod_buf.Length = ACPI_ALLOCATE_BUFFER;
 dod_buf.Pointer = ((void*)0);
 status = AcpiEvaluateObject(handle, "_DOD", ((void*)0), &dod_buf);
 if (ACPI_FAILURE(status)) {
  if (status != AE_NOT_FOUND)
   printf("can't evaluate %s._DOD - %s\n",
          acpi_name(handle), AcpiFormatException(status));
  argset.count = -1;
  goto out;
 }
 res = (ACPI_OBJECT *)dod_buf.Pointer;
 if (!ACPI_PKG_VALID(res, 1)) {
  printf("evaluation of %s._DOD makes no sense\n",
         acpi_name(handle));
  argset.count = -1;
  goto out;
 }
 if (callback == ((void*)0)) {
  argset.count = res->Package.Count;
  goto out;
 }
 argset.callback = callback;
 argset.context = context;
 argset.dod_pkg = res;
 argset.count = 0;
 status = AcpiWalkNamespace(ACPI_TYPE_DEVICE, handle, 1,
     vid_enum_outputs_subr, ((void*)0), &argset, ((void*)0));
 if (ACPI_FAILURE(status))
  printf("failed walking down %s - %s\n",
         acpi_name(handle), AcpiFormatException(status));
out:
 if (dod_buf.Pointer != ((void*)0))
  AcpiOsFree(dod_buf.Pointer);
 return (argset.count);
}
