
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 char* AcpiFormatException (int ) ;
 int acpi_SetInteger (int ,char*,int ) ;
 char* acpi_name (int ) ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static void
vid_set_switch_policy(ACPI_HANDLE handle, UINT32 policy)
{
 ACPI_STATUS status;

 status = acpi_SetInteger(handle, "_DOS", policy);
 if (ACPI_FAILURE(status))
  printf("can't evaluate %s._DOS - %s\n",
         acpi_name(handle), AcpiFormatException(status));
}
