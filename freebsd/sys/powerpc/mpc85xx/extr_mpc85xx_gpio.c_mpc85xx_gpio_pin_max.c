
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int MAXPIN ;

__attribute__((used)) static int
mpc85xx_gpio_pin_max(device_t dev, int *maxpin)
{

 *maxpin = MAXPIN;
 return (0);
}
