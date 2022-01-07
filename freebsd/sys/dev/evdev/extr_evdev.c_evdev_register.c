
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {int ev_mtx; int * ev_lock; int ev_lock_type; } ;


 int EV_LOCK_INTERNAL ;
 int MTX_DEF ;
 int evdev_register_common (struct evdev_dev*) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;

int
evdev_register(struct evdev_dev *evdev)
{
 int ret;

 evdev->ev_lock_type = EV_LOCK_INTERNAL;
 evdev->ev_lock = &evdev->ev_mtx;
 mtx_init(&evdev->ev_mtx, "evmtx", ((void*)0), MTX_DEF);

 ret = evdev_register_common(evdev);
 if (ret != 0)
  mtx_destroy(&evdev->ev_mtx);

 return (ret);
}
