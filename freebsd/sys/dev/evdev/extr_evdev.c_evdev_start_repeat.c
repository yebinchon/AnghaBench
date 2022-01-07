
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct evdev_dev {int* ev_rep; int ev_rep_callout; int ev_rep_key; } ;


 int EVDEV_LOCK_ASSERT (struct evdev_dev*) ;
 size_t REP_DELAY ;
 int callout_reset (int *,int,int ,struct evdev_dev*) ;
 int evdev_repeat_callout ;
 int hz ;

__attribute__((used)) static void
evdev_start_repeat(struct evdev_dev *evdev, uint16_t key)
{

 EVDEV_LOCK_ASSERT(evdev);

 if (evdev->ev_rep[REP_DELAY]) {
  evdev->ev_rep_key = key;
  callout_reset(&evdev->ev_rep_callout,
      evdev->ev_rep[REP_DELAY] * hz / 1000,
      evdev_repeat_callout, evdev);
 }
}
