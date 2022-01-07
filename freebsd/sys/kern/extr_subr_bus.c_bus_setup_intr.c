
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int dummy; } ;
typedef int * driver_intr_t ;
typedef int driver_filter_t ;
typedef TYPE_1__* device_t ;
struct TYPE_5__ {int * parent; } ;


 int BUS_SETUP_INTR (int *,TYPE_1__*,struct resource*,int,int ,int *,void*,void**) ;
 int EINVAL ;
 int INTR_MPSAFE ;
 int device_printf (TYPE_1__*,char*) ;

int
bus_setup_intr(device_t dev, struct resource *r, int flags,
    driver_filter_t filter, driver_intr_t handler, void *arg, void **cookiep)
{
 int error;

 if (dev->parent == ((void*)0))
  return (EINVAL);
 error = BUS_SETUP_INTR(dev->parent, dev, r, flags, filter, handler,
     arg, cookiep);
 if (error != 0)
  return (error);
 if (handler != ((void*)0) && !(flags & INTR_MPSAFE))
  device_printf(dev, "[GIANT-LOCKED]\n");
 return (0);
}
