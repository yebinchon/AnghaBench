
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int CC_GPIO_NPINS ;

__attribute__((used)) static int
chipc_gpio_pin_max(device_t dev, int *maxpin)
{
 *maxpin = CC_GPIO_NPINS-1;
 return (0);
}
