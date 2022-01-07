
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
typedef scalar_t__ phandle_t ;
typedef int id ;
typedef int device_t ;


 scalar_t__ OF_getprop (scalar_t__,char*,int*,int) ;
 scalar_t__ OF_parent (scalar_t__) ;
 scalar_t__ ofw_bus_get_node (int ) ;

u_int
OF_getscsinitid(device_t dev)
{
 phandle_t node;
 uint32_t id;

 for (node = ofw_bus_get_node(dev); node != 0; node = OF_parent(node))
  if (OF_getprop(node, "scsi-initiator-id", &id,
      sizeof(id)) > 0)
   return (id);
 return (7);
}
