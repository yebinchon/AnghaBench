
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ phandle_t ;


 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_getencprop (scalar_t__,char*,scalar_t__*,int) ;
 scalar_t__ OF_peer (scalar_t__) ;
 scalar_t__ ofw_bus_find_child (scalar_t__,char*) ;

phandle_t
ofw_graph_get_endpoint_by_idx(phandle_t port, uint32_t idx)
{
 phandle_t endpoint, child;
 uint32_t reg;


 endpoint = ofw_bus_find_child(port, "endpoint");
 if (endpoint != 0)
  return (endpoint);


 for (child = OF_child(port); child != 0; child = OF_peer(child)) {
  if (OF_getencprop(child, "reg", &reg, sizeof(uint32_t)) <= 0 ||
      reg != idx)
   continue;

  return (child);
 }

 return (0);
}
