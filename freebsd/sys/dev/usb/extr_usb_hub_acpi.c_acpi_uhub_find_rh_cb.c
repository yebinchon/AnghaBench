
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_4__ {int Valid; scalar_t__ Address; } ;
typedef void* ACPI_HANDLE ;
typedef TYPE_1__ ACPI_DEVICE_INFO ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_VALID_ADR ;
 int AE_CTRL_TERMINATE ;
 int AcpiGetObjectInfo (void*,TYPE_1__**) ;
 int AcpiOsFree (TYPE_1__*) ;

__attribute__((used)) static UINT32
acpi_uhub_find_rh_cb(ACPI_HANDLE ah, UINT32 nl, void *ctx, void **status)
{
 ACPI_DEVICE_INFO *devinfo;
 UINT32 ret;

 *status = ((void*)0);
 devinfo = ((void*)0);

 ret = AcpiGetObjectInfo(ah, &devinfo);
 if (ACPI_SUCCESS(ret)) {
  if ((devinfo->Valid & ACPI_VALID_ADR) &&
      (devinfo->Address == 0)) {
   ret = AE_CTRL_TERMINATE;
   *status = ah;
  }
  AcpiOsFree(devinfo);
 }
 return (ret);
}
