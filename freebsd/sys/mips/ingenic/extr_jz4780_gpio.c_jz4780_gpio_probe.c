
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int OF_hasprop (int ,char*) ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 int ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
jz4780_gpio_probe(device_t dev)
{
 phandle_t node;

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);


 if (!ofw_bus_is_compatible(device_get_parent(dev),
    "ingenic,jz4780-pinctrl"))
  return (ENXIO);


 node = ofw_bus_get_node(dev);
 if (!OF_hasprop(node, "gpio-controller"))
  return (ENXIO);

 device_set_desc(dev, "Ingenic JZ4780 GPIO Controller");

 return (BUS_PROBE_DEFAULT);
}
