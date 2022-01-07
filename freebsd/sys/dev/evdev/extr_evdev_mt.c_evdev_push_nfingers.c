
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {int dummy; } ;
typedef int int32_t ;


 int EVDEV_ENTER (struct evdev_dev*) ;
 int EVDEV_EXIT (struct evdev_dev*) ;
 int evdev_send_nfingers (struct evdev_dev*,int ) ;

void
evdev_push_nfingers(struct evdev_dev *evdev, int32_t nfingers)
{

 EVDEV_ENTER(evdev);
 evdev_send_nfingers(evdev, nfingers);
 EVDEV_EXIT(evdev);
}
