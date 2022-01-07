
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int phy_reg ;
typedef int phy_handle ;
typedef scalar_t__ phandle_t ;
typedef int pcell_t ;
typedef int * device_t ;


 int ENXIO ;
 scalar_t__ OF_getencprop (scalar_t__,char*,void*,int) ;
 scalar_t__ OF_getprop (scalar_t__,char*,void*,int) ;
 scalar_t__ OF_node_from_xref (int) ;
 scalar_t__ OF_parent (scalar_t__) ;
 int * device_find_child (int *,int ,scalar_t__) ;
 int device_get_name (int *) ;
 int * device_get_parent (int *) ;
 scalar_t__ device_get_softc (int *) ;
 scalar_t__ ofw_bus_get_node (int *) ;

int
fdt_get_phyaddr(phandle_t node, device_t dev, int *phy_addr, void **phy_sc)
{
 phandle_t phy_node;
 pcell_t phy_handle, phy_reg;
 uint32_t i;
 device_t parent, child;

 if (OF_getencprop(node, "phy-handle", (void *)&phy_handle,
     sizeof(phy_handle)) <= 0)
  return (ENXIO);

 phy_node = OF_node_from_xref(phy_handle);

 if (OF_getencprop(phy_node, "reg", (void *)&phy_reg,
     sizeof(phy_reg)) <= 0)
  return (ENXIO);

 *phy_addr = phy_reg;

 if (phy_sc == ((void*)0))
  return (0);
 phy_node = OF_parent(phy_node);
 while (phy_node != 0) {
  if (OF_getprop(phy_node, "phy-handle", (void *)&phy_handle,
      sizeof(phy_handle)) > 0)
   break;
  phy_node = OF_parent(phy_node);
 }
 if (phy_node == 0)
  return (ENXIO);






 parent = device_get_parent(dev);
 i = 0;
 child = device_find_child(parent, device_get_name(dev), i);
 while (child != ((void*)0)) {
  if (ofw_bus_get_node(child) == phy_node)
   break;
  i++;
  child = device_find_child(parent, device_get_name(dev), i);
 }
 if (child == ((void*)0))
  return (ENXIO);




 *phy_sc = (void *)device_get_softc(child);

 return (0);
}
