
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int EINVAL ;
 int GPIOMAXNAME ;
 int VALID_PIN (int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
mpc85xx_gpio_pin_getname(device_t dev, uint32_t pin, char *name)
{

 if (!VALID_PIN(pin))
  return (EINVAL);

 snprintf(name, GPIOMAXNAME, "GPIO%d", pin);
 name[GPIOMAXNAME-1] = '\0';

 return (0);
}
