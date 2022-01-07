
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int dummy; } ;
typedef TYPE_1__* device_t ;
struct TYPE_4__ {int * parent; } ;


 int BUS_SUSPEND_INTR (int *,TYPE_1__*,struct resource*) ;
 int EINVAL ;

int
bus_suspend_intr(device_t dev, struct resource *r)
{
 if (dev->parent == ((void*)0))
  return (EINVAL);
 return (BUS_SUSPEND_INTR(dev->parent, dev, r));
}
