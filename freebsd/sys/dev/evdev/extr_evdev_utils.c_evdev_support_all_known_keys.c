
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {int dummy; } ;


 size_t KEY_RESERVED ;
 scalar_t__ NONE ;
 scalar_t__* evdev_at_set1_scancodes ;
 int evdev_support_key (struct evdev_dev*,scalar_t__) ;
 size_t nitems (scalar_t__*) ;

void
evdev_support_all_known_keys(struct evdev_dev *evdev)
{
 size_t i;

 for (i = KEY_RESERVED; i < nitems(evdev_at_set1_scancodes); i++)
  if (evdev_at_set1_scancodes[i] != NONE)
   evdev_support_key(evdev, evdev_at_set1_scancodes[i]);
}
