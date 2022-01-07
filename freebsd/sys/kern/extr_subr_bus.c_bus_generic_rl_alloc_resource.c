
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 struct resource* BUS_ALLOC_RESOURCE (int ,int ,int,int*,int ,int ,int ,int ) ;
 struct resource_list* BUS_GET_RESOURCE_LIST (int ,int ) ;
 int device_get_parent (int ) ;
 struct resource* resource_list_alloc (struct resource_list*,int ,int ,int,int*,int ,int ,int ,int ) ;

struct resource *
bus_generic_rl_alloc_resource(device_t dev, device_t child, int type,
    int *rid, rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct resource_list * rl = ((void*)0);

 if (device_get_parent(child) != dev)
  return (BUS_ALLOC_RESOURCE(device_get_parent(dev), child,
      type, rid, start, end, count, flags));

 rl = BUS_GET_RESOURCE_LIST(dev, child);
 if (!rl)
  return (((void*)0));

 return (resource_list_alloc(rl, dev, child, type, rid,
     start, end, count, flags));
}
