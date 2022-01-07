
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evdev_dev {TYPE_1__* ev_cdev; } ;
struct TYPE_2__ {int * si_drv1; } ;


 int M_EVDEV ;
 int evdev_unregister (struct evdev_dev*) ;
 int free (struct evdev_dev*,int ) ;

void
evdev_free(struct evdev_dev *evdev)
{

 if (evdev != ((void*)0) && evdev->ev_cdev != ((void*)0) &&
     evdev->ev_cdev->si_drv1 != ((void*)0))
  evdev_unregister(evdev);

 free(evdev, M_EVDEV);
}
