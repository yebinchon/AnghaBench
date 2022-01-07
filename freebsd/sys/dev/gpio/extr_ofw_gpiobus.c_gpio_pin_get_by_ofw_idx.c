
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int gpio_pin_t ;
typedef int device_t ;


 int gpio_pin_get_by_ofw_propidx (int ,int ,char*,int,int *) ;

int
gpio_pin_get_by_ofw_idx(device_t consumer, phandle_t node,
    int idx, gpio_pin_t *pin)
{

 return (gpio_pin_get_by_ofw_propidx(consumer, node, "gpios", idx, pin));
}
