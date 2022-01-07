
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct ahci_controller {TYPE_1__* interrupt; } ;
typedef int device_t ;
struct TYPE_2__ {int * argument; int * function; } ;


 intptr_t AHCI_UNIT ;
 scalar_t__ device_get_ivars (int ) ;
 struct ahci_controller* device_get_softc (int ) ;

int
ahci_teardown_intr(device_t dev, device_t child, struct resource *irq,
    void *cookie)
{
 struct ahci_controller *ctlr = device_get_softc(dev);
 int unit = (intptr_t)device_get_ivars(child) & AHCI_UNIT;

 ctlr->interrupt[unit].function = ((void*)0);
 ctlr->interrupt[unit].argument = ((void*)0);
 return (0);
}
