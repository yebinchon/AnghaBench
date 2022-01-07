
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {int dummy; } ;


 int * evdev_mouse_button_codes ;
 int evdev_push_key (struct evdev_dev*,int ,int) ;
 size_t nitems (int *) ;

void
evdev_push_mouse_btn(struct evdev_dev *evdev, int buttons)
{
 size_t i;

 for (i = 0; i < nitems(evdev_mouse_button_codes); i++)
  evdev_push_key(evdev, evdev_mouse_button_codes[i],
      buttons & (1 << i));
}
