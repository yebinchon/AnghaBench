
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct acpi_res_context {int ar_ndrq; } ;
typedef int device_t ;


 int SYS_RES_DRQ ;
 int bus_set_resource (int ,int ,int ,int ,int) ;

__attribute__((used)) static void
acpi_res_set_drq(device_t dev, void *context, uint8_t *drq, int count)
{
    struct acpi_res_context *cp = (struct acpi_res_context *)context;

    if (cp == ((void*)0) || drq == ((void*)0))
 return;


    if (count != 1)
 return;

    bus_set_resource(dev, SYS_RES_DRQ, cp->ar_ndrq++, *drq, 1);
}
