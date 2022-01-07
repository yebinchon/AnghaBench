
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int device_t ;


 int OF_device_register_xref (int ,int ) ;
 int OF_xref_from_node (int ) ;
 int ofw_bus_get_node (int ) ;
 int thunder_mdio_attach (int ) ;

__attribute__((used)) static int
thunder_mdio_fdt_attach(device_t dev)
{
 phandle_t node;
 int ret;


 ret = thunder_mdio_attach(dev);
 if (ret != 0)
  return (ret);





 node = ofw_bus_get_node(dev);
 OF_device_register_xref(OF_xref_from_node(node), dev);

 return (0);
}
