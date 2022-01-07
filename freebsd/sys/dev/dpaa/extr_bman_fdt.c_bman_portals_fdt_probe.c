
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phandle_t ;
typedef int device_t ;


 int BMAN_PORT_DEVSTR ;
 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int device_set_desc (int ,int ) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;
 scalar_t__ ofw_bus_node_is_compatible (scalar_t__,char*) ;

__attribute__((used)) static int
bman_portals_fdt_probe(device_t dev)
{
 phandle_t node;

 if (ofw_bus_is_compatible(dev, "simple-bus")) {
  node = ofw_bus_get_node(dev);
  for (node = OF_child(node); node > 0; node = OF_peer(node)) {
   if (ofw_bus_node_is_compatible(node, "fsl,bman-portal"))
    break;
  }
  if (node <= 0)
   return (ENXIO);
 } else if (!ofw_bus_is_compatible(dev, "fsl,bman-portals"))
  return (ENXIO);

 device_set_desc(dev, BMAN_PORT_DEVSTR);

 return (BUS_PROBE_DEFAULT);
}
