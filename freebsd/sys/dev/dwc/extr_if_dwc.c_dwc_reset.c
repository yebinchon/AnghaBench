
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int gpio_prop ;
typedef int * device_t ;
typedef int delay_prop ;


 int DELAY (int) ;
 int ENXIO ;
 scalar_t__ GPIO_MAP_GPIOS (int *,int ,int ,scalar_t__,int*,int*,int*) ;
 int GPIO_PIN_HIGH ;
 int GPIO_PIN_LOW ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIN_SET (int *,int,int) ;
 int GPIO_PIN_SETFLAGS (int *,int,int ) ;
 int * OF_device_from_xref (int) ;
 scalar_t__ OF_getencprop (int ,char*,int*,int) ;
 scalar_t__ OF_hasprop (int ,char*) ;
 int OF_node_from_xref (int) ;
 int device_printf (int *,char*) ;
 scalar_t__ nitems (int*) ;
 int ofw_bus_get_node (int *) ;

__attribute__((used)) static int
dwc_reset(device_t dev)
{
 pcell_t gpio_prop[4];
 pcell_t delay_prop[3];
 phandle_t node, gpio_node;
 device_t gpio;
 uint32_t pin, flags;
 uint32_t pin_value;

 node = ofw_bus_get_node(dev);
 if (OF_getencprop(node, "snps,reset-gpio",
     gpio_prop, sizeof(gpio_prop)) <= 0)
  return (0);

 if (OF_getencprop(node, "snps,reset-delays-us",
     delay_prop, sizeof(delay_prop)) <= 0) {
  device_printf(dev,
      "Wrong property for snps,reset-delays-us");
  return (ENXIO);
 }

 gpio_node = OF_node_from_xref(gpio_prop[0]);
 if ((gpio = OF_device_from_xref(gpio_prop[0])) == ((void*)0)) {
  device_printf(dev,
      "Can't find gpio controller for phy reset\n");
  return (ENXIO);
 }

 if (GPIO_MAP_GPIOS(gpio, node, gpio_node,
     nitems(gpio_prop) - 1,
     gpio_prop + 1, &pin, &flags) != 0) {
  device_printf(dev, "Can't map gpio for phy reset\n");
  return (ENXIO);
 }

 pin_value = GPIO_PIN_LOW;
 if (OF_hasprop(node, "snps,reset-active-low"))
  pin_value = GPIO_PIN_HIGH;

 GPIO_PIN_SETFLAGS(gpio, pin, GPIO_PIN_OUTPUT);
 GPIO_PIN_SET(gpio, pin, pin_value);
 DELAY(delay_prop[0] * 5);
 GPIO_PIN_SET(gpio, pin, !pin_value);
 DELAY(delay_prop[1] * 5);
 GPIO_PIN_SET(gpio, pin, pin_value);
 DELAY(delay_prop[2] * 5);

 return (0);
}
