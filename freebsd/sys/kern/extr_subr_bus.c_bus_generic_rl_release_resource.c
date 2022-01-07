
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
typedef int device_t ;


 struct resource_list* BUS_GET_RESOURCE_LIST (int ,int ) ;
 int BUS_RELEASE_RESOURCE (int ,int ,int,int,struct resource*) ;
 int EINVAL ;
 int device_get_parent (int ) ;
 int resource_list_release (struct resource_list*,int ,int ,int,int,struct resource*) ;

int
bus_generic_rl_release_resource(device_t dev, device_t child, int type,
    int rid, struct resource *r)
{
 struct resource_list * rl = ((void*)0);

 if (device_get_parent(child) != dev)
  return (BUS_RELEASE_RESOURCE(device_get_parent(dev), child,
      type, rid, r));

 rl = BUS_GET_RESOURCE_LIST(dev, child);
 if (!rl)
  return (EINVAL);

 return (resource_list_release(rl, dev, child, type, rid, r));
}
