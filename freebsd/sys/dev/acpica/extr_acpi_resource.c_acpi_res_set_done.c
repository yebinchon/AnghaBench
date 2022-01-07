
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_res_context {int dummy; } ;
typedef int device_t ;


 int AcpiOsFree (struct acpi_res_context*) ;

__attribute__((used)) static void
acpi_res_set_done(device_t dev, void *context)
{
    struct acpi_res_context *cp = (struct acpi_res_context *)context;

    if (cp == ((void*)0))
 return;
    AcpiOsFree(cp);
}
