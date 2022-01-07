
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {struct evdev_client* ev_grabber; } ;
struct evdev_client {int dummy; } ;


 int EBUSY ;
 int EVDEV_LOCK_ASSERT (struct evdev_dev*) ;

int
evdev_grab_client(struct evdev_dev *evdev, struct evdev_client *client)
{

 EVDEV_LOCK_ASSERT(evdev);

 if (evdev->ev_grabber != ((void*)0))
  return (EBUSY);

 evdev->ev_grabber = client;

 return (0);
}
