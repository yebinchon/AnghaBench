
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int device_t ;


 int OF_getproplen (int,char*) ;
 char* ofw_bus_get_compat (int ) ;
 int ofw_bus_get_node (int ) ;
 int ofw_bus_node_is_compatible_int (char const*,int,char const*) ;

int
ofw_bus_is_compatible(device_t dev, const char *onecompat)
{
 phandle_t node;
 const char *compat;
 int len;

 if ((compat = ofw_bus_get_compat(dev)) == ((void*)0))
  return (0);

 if ((node = ofw_bus_get_node(dev)) == -1)
  return (0);


 if ((len = OF_getproplen(node, "compatible")) <= 0)
  return (0);

 return (ofw_bus_node_is_compatible_int(compat, len, onecompat));
}
