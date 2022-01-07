
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiobus_pin {int dummy; } ;
typedef int device_t ;


 int ofw_bus_get_node (int ) ;
 int ofw_gpiobus_parse_gpios_impl (int ,int ,char*,int *,struct gpiobus_pin**) ;

int
ofw_gpiobus_parse_gpios(device_t consumer, char *pname,
 struct gpiobus_pin **pins)
{

 return (ofw_gpiobus_parse_gpios_impl(consumer,
     ofw_bus_get_node(consumer), pname, ((void*)0), pins));
}
