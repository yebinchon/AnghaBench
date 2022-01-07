
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ar531x_gpio_pins () ;

__attribute__((used)) static int
ar5315_gpio_pin_max(device_t dev, int *maxpin)
{

 *maxpin = ar531x_gpio_pins() - 1;
 return (0);
}
