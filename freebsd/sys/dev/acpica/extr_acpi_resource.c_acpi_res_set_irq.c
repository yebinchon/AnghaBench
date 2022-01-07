
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct acpi_res_context {int ar_nirq; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int bus_set_resource (int ,int ,int ,int ,int) ;

__attribute__((used)) static void
acpi_res_set_irq(device_t dev, void *context, uint8_t *irq, int count,
    int trig, int pol)
{
    struct acpi_res_context *cp = (struct acpi_res_context *)context;
    rman_res_t intr;

    if (cp == ((void*)0) || irq == ((void*)0))
 return;


    if (count != 1)
 return;

    intr = *irq;
    bus_set_resource(dev, SYS_RES_IRQ, cp->ar_nirq++, intr, 1);
}
