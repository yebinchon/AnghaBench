
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int * ACPI_HANDLE ;


 int EOVERFLOW ;
 char* acpi_name (int *) ;
 int * nvdimm_root_get_acpi_handle (int ) ;
 int snprintf (char*,size_t,char*,...) ;

__attribute__((used)) static int
nvdimm_root_child_location_str(device_t dev, device_t child, char *buf,
    size_t buflen)
{
 ACPI_HANDLE handle;
 int res;

 handle = nvdimm_root_get_acpi_handle(child);
 if (handle != ((void*)0))
  res = snprintf(buf, buflen, "handle=%s", acpi_name(handle));
 else
  res = snprintf(buf, buflen, "");

 if (res >= buflen)
  return (EOVERFLOW);
 return (0);
}
