
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EINVAL ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIN_PULLDOWN ;
 int GPIO_PIN_PULLUP ;

int
gpio_check_flags(uint32_t caps, uint32_t flags)
{


 flags &= caps;


 if (flags & GPIO_PIN_INPUT && flags & GPIO_PIN_OUTPUT)
  return (EINVAL);

 if (flags & GPIO_PIN_PULLUP && flags & GPIO_PIN_PULLDOWN)
  return (EINVAL);

 return (0);
}
