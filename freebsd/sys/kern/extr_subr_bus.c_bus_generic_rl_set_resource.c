
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;


 struct resource_list* BUS_GET_RESOURCE_LIST (int ,int ) ;
 int EINVAL ;
 int resource_list_add (struct resource_list*,int,int,scalar_t__,scalar_t__,scalar_t__) ;

int
bus_generic_rl_set_resource(device_t dev, device_t child, int type, int rid,
    rman_res_t start, rman_res_t count)
{
 struct resource_list * rl = ((void*)0);

 rl = BUS_GET_RESOURCE_LIST(dev, child);
 if (!rl)
  return (EINVAL);

 resource_list_add(rl, type, rid, start, (start + count - 1), count);

 return (0);
}
