
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int JZ4780_GPIO_PINS ;

__attribute__((used)) static int
jz4780_gpio_pin_max(device_t dev, int *maxpin)
{

 *maxpin = JZ4780_GPIO_PINS - 1;
 return (0);
}
