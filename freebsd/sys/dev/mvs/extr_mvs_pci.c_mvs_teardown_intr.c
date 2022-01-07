
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct mvs_controller {TYPE_1__* interrupt; } ;
typedef int device_t ;
struct TYPE_2__ {int * argument; int * function; } ;


 int device_get_ivars (int ) ;
 struct mvs_controller* device_get_softc (int ) ;

__attribute__((used)) static int
mvs_teardown_intr(device_t dev, device_t child, struct resource *irq,
        void *cookie)
{
 struct mvs_controller *ctlr = device_get_softc(dev);
 int unit = (intptr_t)device_get_ivars(child);

 ctlr->interrupt[unit].function = ((void*)0);
 ctlr->interrupt[unit].argument = ((void*)0);
 return (0);
}
