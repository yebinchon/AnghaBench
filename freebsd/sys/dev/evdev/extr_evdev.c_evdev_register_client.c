
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evdev_dev {int ev_clients; TYPE_1__* ev_methods; int ev_shortname; } ;
struct evdev_client {int dummy; } ;
struct TYPE_2__ {int (* ev_open ) (struct evdev_dev*) ;} ;


 int EVDEV_LOCK_ASSERT (struct evdev_dev*) ;
 scalar_t__ LIST_EMPTY (int *) ;
 int LIST_INSERT_HEAD (int *,struct evdev_client*,int ) ;
 int debugf (struct evdev_dev*,char*,int ) ;
 int ec_link ;
 int stub1 (struct evdev_dev*) ;

int
evdev_register_client(struct evdev_dev *evdev, struct evdev_client *client)
{
 int ret = 0;

 debugf(evdev, "adding new client for device %s", evdev->ev_shortname);

 EVDEV_LOCK_ASSERT(evdev);

 if (LIST_EMPTY(&evdev->ev_clients) && evdev->ev_methods != ((void*)0) &&
     evdev->ev_methods->ev_open != ((void*)0)) {
  debugf(evdev, "calling ev_open() on device %s",
      evdev->ev_shortname);
  ret = evdev->ev_methods->ev_open(evdev);
 }
 if (ret == 0)
  LIST_INSERT_HEAD(&evdev->ev_clients, client, ec_link);
 return (ret);
}
