
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct resource {int dummy; } ;
typedef int gpio_pin_t ;
typedef int device_t ;



struct resource *
gpio_alloc_intr_resource(device_t consumer_dev, int *rid, u_int alloc_flags,
    gpio_pin_t pin, uint32_t intr_mode)
{

 return (((void*)0));
}
