
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int dummy; } ;
typedef TYPE_1__* device_t ;
struct TYPE_5__ {scalar_t__ parent; } ;


 int BUS_RELEASE_RESOURCE (scalar_t__,TYPE_1__*,int,int,struct resource*) ;
 int EINVAL ;

int
bus_generic_release_resource(device_t dev, device_t child, int type, int rid,
    struct resource *r)
{

 if (dev->parent)
  return (BUS_RELEASE_RESOURCE(dev->parent, child, type, rid,
      r));
 return (EINVAL);
}
