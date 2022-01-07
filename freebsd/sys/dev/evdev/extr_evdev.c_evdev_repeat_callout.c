
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {int* ev_rep; int ev_rep_key; int ev_rep_callout; } ;


 int EV_KEY ;
 int EV_SYN ;
 int KEY_EVENT_REPEAT ;
 int KEY_RESERVED ;
 size_t REP_PERIOD ;
 int SYN_REPORT ;
 int callout_reset (int *,int,void (*) (void*),struct evdev_dev*) ;
 int evdev_send_event (struct evdev_dev*,int ,int ,int) ;
 int hz ;

__attribute__((used)) static void
evdev_repeat_callout(void *arg)
{
 struct evdev_dev *evdev = (struct evdev_dev *)arg;

 evdev_send_event(evdev, EV_KEY, evdev->ev_rep_key, KEY_EVENT_REPEAT);
 evdev_send_event(evdev, EV_SYN, SYN_REPORT, 1);

 if (evdev->ev_rep[REP_PERIOD])
  callout_reset(&evdev->ev_rep_callout,
      evdev->ev_rep[REP_PERIOD] * hz / 1000,
      evdev_repeat_callout, evdev);
 else
  evdev->ev_rep_key = KEY_RESERVED;
}
