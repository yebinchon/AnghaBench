
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phandle_t ;
typedef int gpio_pin_t ;
typedef int * device_t ;


 int KASSERT (int,char*) ;
 int gpio_pin_get_by_ofw_idx (int *,scalar_t__,int,int *) ;
 int ofw_bus_find_string_index (scalar_t__,char*,char*,int*) ;

int
gpio_pin_get_by_ofw_name(device_t consumer, phandle_t node,
    char *name, gpio_pin_t *pin)
{
 int rv, idx;

 KASSERT(consumer != ((void*)0) && node > 0,
     ("both consumer and node required"));

 rv = ofw_bus_find_string_index(node, "gpio-names", name, &idx);
 if (rv != 0)
  return (rv);
 return (gpio_pin_get_by_ofw_idx(consumer, node, idx, pin));
}
