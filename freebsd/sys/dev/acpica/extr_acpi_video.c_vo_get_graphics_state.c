
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 char* AcpiFormatException (int ) ;
 int acpi_GetInteger (int ,char*,scalar_t__*) ;
 char* acpi_name (int ) ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static UINT32
vo_get_graphics_state(ACPI_HANDLE handle)
{
 UINT32 dgs;
 ACPI_STATUS status;

 dgs = 0;
 status = acpi_GetInteger(handle, "_DGS", &dgs);
 if (ACPI_FAILURE(status))
  printf("can't evaluate %s._DGS - %s\n",
         acpi_name(handle), AcpiFormatException(status));

 return (dgs);
}
