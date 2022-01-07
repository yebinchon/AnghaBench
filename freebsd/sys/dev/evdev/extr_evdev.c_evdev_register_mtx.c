
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct evdev_dev {struct mtx* ev_lock; int ev_lock_type; } ;


 int EV_LOCK_MTX ;
 int evdev_register_common (struct evdev_dev*) ;

int
evdev_register_mtx(struct evdev_dev *evdev, struct mtx *mtx)
{

 evdev->ev_lock_type = EV_LOCK_MTX;
 evdev->ev_lock = mtx;
 return (evdev_register_common(evdev));
}
