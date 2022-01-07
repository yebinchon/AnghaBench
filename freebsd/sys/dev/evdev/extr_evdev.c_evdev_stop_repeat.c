
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {scalar_t__ ev_rep_key; int ev_rep_callout; } ;


 int EVDEV_LOCK_ASSERT (struct evdev_dev*) ;
 scalar_t__ KEY_RESERVED ;
 int callout_stop (int *) ;

__attribute__((used)) static void
evdev_stop_repeat(struct evdev_dev *evdev)
{

 EVDEV_LOCK_ASSERT(evdev);

 if (evdev->ev_rep_key != KEY_RESERVED) {
  callout_stop(&evdev->ev_rep_callout);
  evdev->ev_rep_key = KEY_RESERVED;
 }
}
