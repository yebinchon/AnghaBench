
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef TYPE_1__* device_t ;
struct TYPE_5__ {scalar_t__ parent; } ;


 int BUS_ADJUST_RESOURCE (scalar_t__,TYPE_1__*,int,struct resource*,int ,int ) ;
 int EINVAL ;

int
bus_generic_adjust_resource(device_t dev, device_t child, int type,
    struct resource *r, rman_res_t start, rman_res_t end)
{

 if (dev->parent)
  return (BUS_ADJUST_RESOURCE(dev->parent, child, type, r, start,
      end));
 return (EINVAL);
}
