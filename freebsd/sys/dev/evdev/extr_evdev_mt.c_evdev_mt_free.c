
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {int ev_mt; } ;


 int M_EVDEV ;
 int free (int ,int ) ;

void
evdev_mt_free(struct evdev_dev *evdev)
{

 free(evdev->ev_mt, M_EVDEV);
}
