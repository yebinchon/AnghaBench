
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int * device_t ;
typedef int * ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AcpiEvaluateObject (int *,char*,int *,int *) ;
 int * BUS_ADD_CHILD (int *,int ,char*,int) ;
 int * acpi_get_handle (int *) ;
 int * device_find_child (int *,char*,int) ;
 int device_printf (int *,char*) ;
 int device_probe_and_attach (int *) ;

__attribute__((used)) static void
acpi_perf_identify(driver_t *driver, device_t parent)
{
 ACPI_HANDLE handle;
 device_t dev;


 if (device_find_child(parent, "acpi_perf", -1) != ((void*)0))
  return;


 handle = acpi_get_handle(parent);
 if (handle == ((void*)0))
  return;
 if (ACPI_FAILURE(AcpiEvaluateObject(handle, "_PSS", ((void*)0), ((void*)0))))
  return;







 if ((dev = BUS_ADD_CHILD(parent, 0, "acpi_perf", -1)) != ((void*)0))
  device_probe_and_attach(dev);
 else
  device_printf(parent, "add acpi_perf child failed\n");
}
