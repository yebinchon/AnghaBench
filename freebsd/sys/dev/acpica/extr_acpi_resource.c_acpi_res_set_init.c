
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_res_context {void* ar_parent; } ;
typedef int device_t ;


 struct acpi_res_context* AcpiOsAllocate (int) ;
 int bzero (struct acpi_res_context*,int) ;

__attribute__((used)) static void
acpi_res_set_init(device_t dev, void *arg, void **context)
{
    struct acpi_res_context *cp;

    if ((cp = AcpiOsAllocate(sizeof(*cp))) != ((void*)0)) {
 bzero(cp, sizeof(*cp));
 cp->ar_parent = arg;
 *context = cp;
    }
}
