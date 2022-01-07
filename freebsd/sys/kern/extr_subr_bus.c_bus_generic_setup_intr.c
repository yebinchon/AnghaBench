
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int dummy; } ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef TYPE_1__* device_t ;
struct TYPE_5__ {scalar_t__ parent; } ;


 int BUS_SETUP_INTR (scalar_t__,TYPE_1__*,struct resource*,int,int *,int *,void*,void**) ;
 int EINVAL ;

int
bus_generic_setup_intr(device_t dev, device_t child, struct resource *irq,
    int flags, driver_filter_t *filter, driver_intr_t *intr, void *arg,
    void **cookiep)
{

 if (dev->parent)
  return (BUS_SETUP_INTR(dev->parent, child, irq, flags,
      filter, intr, arg, cookiep));
 return (EINVAL);
}
