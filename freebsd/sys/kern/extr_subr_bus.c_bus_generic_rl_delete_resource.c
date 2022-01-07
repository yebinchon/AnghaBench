
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
typedef int device_t ;


 struct resource_list* BUS_GET_RESOURCE_LIST (int ,int ) ;
 int resource_list_delete (struct resource_list*,int,int) ;

void
bus_generic_rl_delete_resource(device_t dev, device_t child, int type, int rid)
{
 struct resource_list * rl = ((void*)0);

 rl = BUS_GET_RESOURCE_LIST(dev, child);
 if (!rl)
  return;

 resource_list_delete(rl, type, rid);

 return;
}
