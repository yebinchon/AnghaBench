
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int dummy; } ;
typedef TYPE_1__* device_t ;
struct TYPE_5__ {scalar_t__ parent; } ;


 int BUS_BIND_INTR (scalar_t__,TYPE_1__*,struct resource*,int) ;
 int EINVAL ;

int
bus_generic_bind_intr(device_t dev, device_t child, struct resource *irq,
    int cpu)
{


 if (dev->parent)
  return (BUS_BIND_INTR(dev->parent, child, irq, cpu));
 return (EINVAL);
}
