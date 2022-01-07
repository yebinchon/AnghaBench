
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int device_t ;


 int OF_hasprop (int,char const*) ;
 int ofw_bus_get_node (int ) ;

int
ofw_bus_has_prop(device_t dev, const char *propname)
{
 phandle_t node;

 if ((node = ofw_bus_get_node(dev)) == -1)
  return (0);

 return (OF_hasprop(node, propname));
}
