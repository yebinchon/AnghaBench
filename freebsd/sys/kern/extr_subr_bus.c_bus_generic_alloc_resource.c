
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef TYPE_1__* device_t ;
struct TYPE_5__ {scalar_t__ parent; } ;


 struct resource* BUS_ALLOC_RESOURCE (scalar_t__,TYPE_1__*,int,int*,int ,int ,int ,int ) ;

struct resource *
bus_generic_alloc_resource(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{

 if (dev->parent)
  return (BUS_ALLOC_RESOURCE(dev->parent, child, type, rid,
      start, end, count, flags));
 return (((void*)0));
}
