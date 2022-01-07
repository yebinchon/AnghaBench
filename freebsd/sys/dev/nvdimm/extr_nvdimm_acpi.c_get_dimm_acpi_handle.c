
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ nfit_handle_t ;
typedef int ACPI_STATUS ;
typedef int * ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_DEVICE ;
 int AcpiWalkNamespace (int ,int *,int,int ,int *,void*,int **) ;
 int find_dimm ;

__attribute__((used)) static ACPI_HANDLE
get_dimm_acpi_handle(ACPI_HANDLE root_handle, nfit_handle_t adr)
{
 ACPI_HANDLE res;
 ACPI_STATUS status;

 res = ((void*)0);
 status = AcpiWalkNamespace(ACPI_TYPE_DEVICE, root_handle, 1, find_dimm,
     ((void*)0), (void *)(uintptr_t)adr, &res);
 if (ACPI_FAILURE(status))
  res = ((void*)0);
 return (res);
}
