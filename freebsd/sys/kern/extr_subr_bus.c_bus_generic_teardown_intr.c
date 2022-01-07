
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int dummy; } ;
typedef TYPE_1__* device_t ;
struct TYPE_5__ {scalar_t__ parent; } ;


 int BUS_TEARDOWN_INTR (scalar_t__,TYPE_1__*,struct resource*,void*) ;
 int EINVAL ;

int
bus_generic_teardown_intr(device_t dev, device_t child, struct resource *irq,
    void *cookie)
{

 if (dev->parent)
  return (BUS_TEARDOWN_INTR(dev->parent, child, irq, cookie));
 return (EINVAL);
}
