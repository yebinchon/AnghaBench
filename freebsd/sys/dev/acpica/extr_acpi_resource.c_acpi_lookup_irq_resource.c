
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct lookup_irq_request {int rid; scalar_t__ found; int checkrid; scalar_t__ counter; int irq; int * acpi_res; } ;
typedef int device_t ;
typedef int ACPI_STATUS ;
typedef int ACPI_RESOURCE ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_NOT_FOUND ;
 int AcpiWalkResources (int ,char*,int ,struct lookup_irq_request*) ;
 int acpi_get_handle (int ) ;
 int acpi_lookup_irq_handler ;
 int rman_get_start (struct resource*) ;

ACPI_STATUS
acpi_lookup_irq_resource(device_t dev, int rid, struct resource *res,
    ACPI_RESOURCE *acpi_res)
{
    struct lookup_irq_request req;
    ACPI_STATUS status;

    req.acpi_res = acpi_res;
    req.irq = rman_get_start(res);
    req.counter = 0;
    req.rid = rid;
    req.found = 0;
    req.checkrid = 1;
    status = AcpiWalkResources(acpi_get_handle(dev), "_CRS",
 acpi_lookup_irq_handler, &req);
    if (ACPI_SUCCESS(status) && req.found == 0)
 status = AE_NOT_FOUND;
    return (status);
}
