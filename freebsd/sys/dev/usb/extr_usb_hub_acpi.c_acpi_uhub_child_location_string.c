
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int * ACPI_HANDLE ;


 int * acpi_get_handle (int ) ;
 char* acpi_name (int *) ;
 int strlcat (char*,char*,size_t) ;
 int uhub_child_location_string (int ,int ,char*,size_t) ;

__attribute__((used)) static int
acpi_uhub_child_location_string(device_t parent, device_t child,
    char *buf, size_t buflen)
{
 ACPI_HANDLE ah;

 uhub_child_location_string(parent, child, buf, buflen);

 ah = acpi_get_handle(child);
 if (ah != ((void*)0)) {
  strlcat(buf, " handle=", buflen);
  strlcat(buf, acpi_name(ah), buflen);
 }
 return (0);
}
