
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {int dummy; } ;


 int * evdev_led_codes ;
 int evdev_push_led (struct evdev_dev*,int ,int) ;
 size_t nitems (int *) ;

void
evdev_push_leds(struct evdev_dev *evdev, int leds)
{
 size_t i;


 if (evdev == ((void*)0))
  return;

 for (i = 0; i < nitems(evdev_led_codes); i++)
  evdev_push_led(evdev, evdev_led_codes[i], leds & (1 << i));
}
