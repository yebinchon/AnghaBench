
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef TYPE_1__* device_t ;
struct TYPE_4__ {int * parent; } ;


 int BUS_ADJUST_RESOURCE (int *,TYPE_1__*,int,struct resource*,int ,int ) ;
 int EINVAL ;

int
bus_adjust_resource(device_t dev, int type, struct resource *r, rman_res_t start,
    rman_res_t end)
{
 if (dev->parent == ((void*)0))
  return (EINVAL);
 return (BUS_ADJUST_RESOURCE(dev->parent, dev, type, r, start, end));
}
