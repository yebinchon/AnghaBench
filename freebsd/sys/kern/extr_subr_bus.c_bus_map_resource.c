
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct resource_map_request {int dummy; } ;
struct resource_map {int dummy; } ;
struct resource {int dummy; } ;
typedef TYPE_1__* device_t ;
struct TYPE_4__ {int * parent; } ;


 int BUS_MAP_RESOURCE (int *,TYPE_1__*,int,struct resource*,struct resource_map_request*,struct resource_map*) ;
 int EINVAL ;

int
bus_map_resource(device_t dev, int type, struct resource *r,
    struct resource_map_request *args, struct resource_map *map)
{
 if (dev->parent == ((void*)0))
  return (EINVAL);
 return (BUS_MAP_RESOURCE(dev->parent, dev, type, r, args, map));
}
