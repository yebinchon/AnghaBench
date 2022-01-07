
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
 int acpi_GetInteger (int ,char*,int*) ;
 char* acpi_name (int ) ;
 int printf (char*,char*,char*) ;
 int video_output ;

__attribute__((used)) static int
vo_get_brightness(ACPI_HANDLE handle)
{
 UINT32 level;
 ACPI_STATUS status;

 ACPI_SERIAL_ASSERT(video_output);
 status = acpi_GetInteger(handle, "_BQC", &level);
 if (ACPI_FAILURE(status)) {
  printf("can't evaluate %s._BQC - %s\n", acpi_name(handle),
      AcpiFormatException(status));
  return (-1);
 }
 if (level > 100)
  return (-1);

 return (level);
}
