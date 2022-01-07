
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpioled {scalar_t__ pin; } ;


 int gpio_pin_set_active (scalar_t__,int) ;

__attribute__((used)) static void
gpioled_control(void *priv, int onoff)
{
 struct gpioled *led;

 led = (struct gpioled *)priv;
 if (led->pin)
  gpio_pin_set_active(led->pin, onoff);
}
