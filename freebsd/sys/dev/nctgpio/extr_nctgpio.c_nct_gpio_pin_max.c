
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int NCT_MAX_PIN ;

__attribute__((used)) static int
nct_gpio_pin_max(device_t dev, int *npins)
{
 *npins = NCT_MAX_PIN;

 return (0);
}
