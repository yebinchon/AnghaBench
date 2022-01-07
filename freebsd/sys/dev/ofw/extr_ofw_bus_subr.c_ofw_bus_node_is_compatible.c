
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int OFW_COMPAT_LEN ;
 scalar_t__ OF_getprop (int ,char*,char*,int) ;
 int OF_getproplen (int ,char*) ;
 int bzero (char*,int) ;
 int ofw_bus_node_is_compatible_int (char*,int,char const*) ;

int
ofw_bus_node_is_compatible(phandle_t node, const char *compatstr)
{
 char compat[OFW_COMPAT_LEN];
 int len, rv;

 if ((len = OF_getproplen(node, "compatible")) <= 0)
  return (0);

 bzero(compat, OFW_COMPAT_LEN);

 if (OF_getprop(node, "compatible", compat, OFW_COMPAT_LEN) < 0)
  return (0);

 rv = ofw_bus_node_is_compatible_int(compat, len, compatstr);

 return (rv);
}
