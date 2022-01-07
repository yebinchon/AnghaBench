
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {int ev_cdev; } ;


 int destroy_dev (int ) ;

int
evdev_cdev_destroy(struct evdev_dev *evdev)
{

 destroy_dev(evdev->ev_cdev);
 return (0);
}
