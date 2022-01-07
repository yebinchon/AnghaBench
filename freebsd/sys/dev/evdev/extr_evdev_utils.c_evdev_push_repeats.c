
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct evdev_dev {int dummy; } ;
struct TYPE_3__ {int kb_delay2; int kb_delay1; } ;
typedef TYPE_1__ keyboard_t ;


 int EV_REP ;
 int REP_DELAY ;
 int REP_PERIOD ;
 int evdev_push_event (struct evdev_dev*,int ,int ,int ) ;

void
evdev_push_repeats(struct evdev_dev *evdev, keyboard_t *kbd)
{

 if (evdev == ((void*)0))
  return;

 evdev_push_event(evdev, EV_REP, REP_DELAY, kbd->kb_delay1);
 evdev_push_event(evdev, EV_REP, REP_PERIOD, kbd->kb_delay2);
}
