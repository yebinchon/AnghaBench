
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
typedef int device_t ;
struct TYPE_3__ {int * Pointer; int Length; } ;
typedef int ACPI_OBJECT ;
typedef int ACPI_HANDLE ;
typedef TYPE_1__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_PKG_VALID (int *,int) ;
 int AcpiEvaluateObject (int ,char*,int *,TYPE_1__*) ;
 int AcpiOsFree (int *) ;
 int ENXIO ;

 int acpi_PkgGas (int ,int *,int ,int*,int*,struct resource**,int ) ;
 int acpi_get_handle (int ) ;
 int bus_delete_resource (int ,int,int) ;
 int bus_release_resource (int ,int,int,struct resource*) ;
 int device_quiet (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ resource_disabled (char*,int ) ;

__attribute__((used)) static int
acpi_perf_probe(device_t dev)
{
 ACPI_HANDLE handle;
 ACPI_OBJECT *pkg;
 struct resource *res;
 ACPI_BUFFER buf;
 int error, rid, type;

 if (resource_disabled("acpi_perf", 0))
  return (ENXIO);






 error = ENXIO;
 handle = acpi_get_handle(dev);
 buf.Pointer = ((void*)0);
 buf.Length = ACPI_ALLOCATE_BUFFER;
 if (ACPI_FAILURE(AcpiEvaluateObject(handle, "_PCT", ((void*)0), &buf)))
  return (error);
 pkg = (ACPI_OBJECT *)buf.Pointer;
 if (ACPI_PKG_VALID(pkg, 2)) {
  rid = 0;
  error = acpi_PkgGas(dev, pkg, 0, &type, &rid, &res, 0);
  switch (error) {
  case 0:
   bus_release_resource(dev, type, rid, res);
   bus_delete_resource(dev, type, rid);
   device_set_desc(dev, "ACPI CPU Frequency Control");
   break;
  case 128:
   device_quiet(dev);
   error = 0;
   break;
  }
 }
 AcpiOsFree(buf.Pointer);

 return (error);
}
