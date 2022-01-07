
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t Length; char* Pointer; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;
typedef TYPE_1__ ACPI_BUFFER ;


 int ACPI_SINGLE_NAME ;
 int AcpiGetName (int ,int ,TYPE_1__*) ;

__attribute__((used)) static ACPI_STATUS
acpi_short_name(ACPI_HANDLE handle, char *buffer, size_t buflen)
{
 ACPI_BUFFER buf;

 buf.Length = buflen;
 buf.Pointer = buffer;
 return (AcpiGetName(handle, ACPI_SINGLE_NAME, &buf));
}
