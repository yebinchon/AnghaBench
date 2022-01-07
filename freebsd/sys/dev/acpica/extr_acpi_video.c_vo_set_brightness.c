
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SERIAL_ASSERT (int ) ;
 char* AcpiFormatException (int ) ;
 int acpi_SetInteger (int ,char*,int) ;
 char* acpi_name (int ) ;
 int printf (char*,char*,char*) ;
 int video_output ;

__attribute__((used)) static void
vo_set_brightness(ACPI_HANDLE handle, int level)
{
 ACPI_STATUS status;

 ACPI_SERIAL_ASSERT(video_output);
 status = acpi_SetInteger(handle, "_BCM", level);
 if (ACPI_FAILURE(status))
  printf("can't evaluate %s._BCM - %s\n",
         acpi_name(handle), AcpiFormatException(status));
}
