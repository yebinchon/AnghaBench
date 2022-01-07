
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list_entry {int count; int start; } ;
struct resource_list {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 struct resource_list* BUS_GET_RESOURCE_LIST (int ,int ) ;
 int EINVAL ;
 int ENOENT ;
 struct resource_list_entry* resource_list_find (struct resource_list*,int,int) ;

int
bus_generic_rl_get_resource(device_t dev, device_t child, int type, int rid,
    rman_res_t *startp, rman_res_t *countp)
{
 struct resource_list * rl = ((void*)0);
 struct resource_list_entry * rle = ((void*)0);

 rl = BUS_GET_RESOURCE_LIST(dev, child);
 if (!rl)
  return (EINVAL);

 rle = resource_list_find(rl, type, rid);
 if (!rle)
  return (ENOENT);

 if (startp)
  *startp = rle->start;
 if (countp)
  *countp = rle->count;

 return (0);
}
