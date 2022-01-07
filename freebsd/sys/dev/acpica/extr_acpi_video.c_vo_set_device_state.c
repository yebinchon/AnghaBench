
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SERIAL_ASSERT (int ) ;
 char* AcpiFormatException (int ) ;
 int acpi_SetInteger (int ,char*,int ) ;
 char* acpi_name (int ) ;
 int printf (char*,char*,char*) ;
 int video_output ;

__attribute__((used)) static void
vo_set_device_state(ACPI_HANDLE handle, UINT32 state)
{
 ACPI_STATUS status;

 ACPI_SERIAL_ASSERT(video_output);
 status = acpi_SetInteger(handle, "_DSS", state);
 if (ACPI_FAILURE(status))
  printf("can't evaluate %s._DSS - %s\n",
         acpi_name(handle), AcpiFormatException(status));
}
