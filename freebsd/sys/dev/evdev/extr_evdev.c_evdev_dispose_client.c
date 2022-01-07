
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evdev_dev {int ev_flags; TYPE_1__* ev_methods; int ev_clients; int ev_shortname; } ;
struct evdev_client {int dummy; } ;
struct TYPE_2__ {int (* ev_close ) (struct evdev_dev*) ;} ;


 int EVDEV_FLAG_SOFTREPEAT ;
 int EVDEV_LOCK_ASSERT (struct evdev_dev*) ;
 int EV_REP ;
 scalar_t__ LIST_EMPTY (int *) ;
 int LIST_REMOVE (struct evdev_client*,int ) ;
 scalar_t__ bit_test (int ,int ) ;
 int debugf (struct evdev_dev*,char*,int ) ;
 int ec_link ;
 scalar_t__ evdev_event_supported (struct evdev_dev*,int ) ;
 int evdev_release_client (struct evdev_dev*,struct evdev_client*) ;
 int evdev_stop_repeat (struct evdev_dev*) ;
 int stub1 (struct evdev_dev*) ;

void
evdev_dispose_client(struct evdev_dev *evdev, struct evdev_client *client)
{
 debugf(evdev, "removing client for device %s", evdev->ev_shortname);

 EVDEV_LOCK_ASSERT(evdev);

 LIST_REMOVE(client, ec_link);
 if (LIST_EMPTY(&evdev->ev_clients)) {
  if (evdev->ev_methods != ((void*)0) &&
      evdev->ev_methods->ev_close != ((void*)0))
   (void)evdev->ev_methods->ev_close(evdev);
  if (evdev_event_supported(evdev, EV_REP) &&
      bit_test(evdev->ev_flags, EVDEV_FLAG_SOFTREPEAT))
   evdev_stop_repeat(evdev);
 }
 evdev_release_client(evdev, client);
}
