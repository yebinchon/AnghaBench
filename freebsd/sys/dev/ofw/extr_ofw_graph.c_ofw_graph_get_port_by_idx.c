
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int portnode ;
typedef scalar_t__ phandle_t ;


 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_getencprop (scalar_t__,char*,int*,int) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int PORT_MAX_NAME ;
 scalar_t__ ofw_bus_find_child (scalar_t__,char*) ;
 int snprintf (char*,int,char*,int) ;

phandle_t
ofw_graph_get_port_by_idx(phandle_t node, uint32_t idx)
{
 phandle_t ports, child;
 uint32_t reg;
 char portnode[PORT_MAX_NAME];


 snprintf(portnode, sizeof(portnode), "port@%d", idx);
 child = ofw_bus_find_child(node, portnode);
 if (child != 0)
  return (child);


 ports = ofw_bus_find_child(node, "ports");
 if (ports == 0)
  return (0);

 for (child = OF_child(ports); child != 0; child = OF_peer(child)) {
  if (OF_getencprop(child, "reg", &reg, sizeof(uint32_t)) <= 0 ||
      reg != idx)
   continue;

  return (child);
 }

 return (0);
}
