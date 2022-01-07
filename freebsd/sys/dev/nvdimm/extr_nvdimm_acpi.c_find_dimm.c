
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_3__ {uintptr_t Address; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;
typedef TYPE_1__ ACPI_DEVICE_INFO ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_CTRL_TERMINATE ;
 int AE_ERROR ;
 int AE_OK ;
 int AcpiGetObjectInfo (int ,TYPE_1__**) ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
find_dimm(ACPI_HANDLE handle, UINT32 nesting_level, void *context,
    void **return_value)
{
 ACPI_DEVICE_INFO *device_info;
 ACPI_STATUS status;

 status = AcpiGetObjectInfo(handle, &device_info);
 if (ACPI_FAILURE(status))
  return_ACPI_STATUS(AE_ERROR);
 if (device_info->Address == (uintptr_t)context) {
  *(ACPI_HANDLE *)return_value = handle;
  return_ACPI_STATUS(AE_CTRL_TERMINATE);
 }
 return_ACPI_STATUS(AE_OK);
}
