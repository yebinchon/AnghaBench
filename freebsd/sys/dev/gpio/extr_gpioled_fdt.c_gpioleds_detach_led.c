
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpioled {scalar_t__ pin; int * leddev; } ;


 int gpio_pin_release (scalar_t__) ;
 int led_destroy (int *) ;

__attribute__((used)) static void
gpioleds_detach_led(struct gpioled *led)
{

 if (led->leddev != ((void*)0))
  led_destroy(led->leddev);

 if (led->pin)
  gpio_pin_release(led->pin);
}
