
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int dummy; } ;
typedef TYPE_1__* device_t ;
struct TYPE_4__ {int * parent; } ;


 int BUS_RELEASE_RESOURCE (int *,TYPE_1__*,int,int,struct resource*) ;
 int EINVAL ;

int
bus_release_resource(device_t dev, int type, int rid, struct resource *r)
{
 int rv;

 if (dev->parent == ((void*)0))
  return (EINVAL);
 rv = BUS_RELEASE_RESOURCE(dev->parent, dev, type, rid, r);
 return (rv);
}
