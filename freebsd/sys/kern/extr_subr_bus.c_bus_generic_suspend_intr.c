
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int dummy; } ;
typedef TYPE_1__* device_t ;
struct TYPE_5__ {scalar_t__ parent; } ;


 int BUS_SUSPEND_INTR (scalar_t__,TYPE_1__*,struct resource*) ;
 int EINVAL ;

int
bus_generic_suspend_intr(device_t dev, device_t child, struct resource *irq)
{

 if (dev->parent)
  return (BUS_SUSPEND_INTR(dev->parent, child, irq));
 return (EINVAL);
}
