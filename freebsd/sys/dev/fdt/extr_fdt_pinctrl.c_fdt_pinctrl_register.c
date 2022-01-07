
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int device_t ;


 int OF_device_register_xref (int ,int ) ;
 int OF_xref_from_node (int ) ;
 int TSENTER () ;
 int TSEXIT () ;
 int ofw_bus_get_node (int ) ;
 int pinctrl_register_children (int ,int ,char const*) ;

int
fdt_pinctrl_register(device_t pinctrl, const char *pinprop)
{
 phandle_t node;
 int ret;

 TSENTER();
 node = ofw_bus_get_node(pinctrl);
 OF_device_register_xref(OF_xref_from_node(node), pinctrl);
 ret = pinctrl_register_children(pinctrl, node, pinprop);
 TSEXIT();

 return (ret);
}
