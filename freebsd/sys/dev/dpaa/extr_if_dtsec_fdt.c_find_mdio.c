
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int device_t ;


 int ENOENT ;
 int OF_parent (int ) ;
 int device_get_parent (int ) ;
 int ofw_bus_find_child_device_by_phandle (int ,int ) ;
 scalar_t__ ofw_bus_node_is_compatible (int ,char*) ;

__attribute__((used)) static int
find_mdio(phandle_t phy_node, device_t mac, device_t *mdio_dev)
{
 device_t bus;

 while (phy_node > 0) {
  if (ofw_bus_node_is_compatible(phy_node, "fsl,fman-mdio"))
   break;
  phy_node = OF_parent(phy_node);
 }

 if (phy_node <= 0)
  return (ENOENT);

 bus = device_get_parent(mac);
 *mdio_dev = ofw_bus_find_child_device_by_phandle(bus, phy_node);

 return (0);
}
