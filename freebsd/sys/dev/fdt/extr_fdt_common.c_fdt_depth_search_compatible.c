
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phandle_t ;


 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 scalar_t__ fdt_is_compatible_strict (scalar_t__,char const*) ;
 scalar_t__ ofw_bus_node_is_compatible (scalar_t__,char const*) ;

phandle_t
fdt_depth_search_compatible(phandle_t start, const char *compat, int strict)
{
 phandle_t child, node;





 for (node = OF_child(start); node != 0; node = OF_peer(node)) {
  if (ofw_bus_node_is_compatible(node, compat) &&
      (strict == 0 || fdt_is_compatible_strict(node, compat))) {
   return (node);
  }
  child = fdt_depth_search_compatible(node, compat, strict);
  if (child != 0)
   return (child);
 }
 return (0);
}
