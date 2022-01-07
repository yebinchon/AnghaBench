
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {int dummy; } ;


 int EVDEV_ENTER (struct evdev_dev*) ;
 int EVDEV_EXIT (struct evdev_dev*) ;
 int evdev_send_mt_compat (struct evdev_dev*) ;

void
evdev_push_mt_compat(struct evdev_dev *evdev)
{

 EVDEV_ENTER(evdev);
 evdev_send_mt_compat(evdev);
 EVDEV_EXIT(evdev);
}
