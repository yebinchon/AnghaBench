
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {void* ev_softc; } ;



inline void *
evdev_get_softc(struct evdev_dev *evdev)
{

 return (evdev->ev_softc);
}
