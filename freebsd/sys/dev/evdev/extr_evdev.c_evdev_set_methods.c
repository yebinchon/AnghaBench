
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_methods {int dummy; } ;
struct evdev_dev {void* ev_softc; struct evdev_methods const* ev_methods; } ;



inline void
evdev_set_methods(struct evdev_dev *evdev, void *softc,
    const struct evdev_methods *methods)
{

 evdev->ev_methods = methods;
 evdev->ev_softc = softc;
}
