
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct evdev_dev {int ev_clients; int ev_key_states; int ev_flags; } ;
typedef int int32_t ;


 int EVDEV_FLAG_SOFTREPEAT ;
 int EVDEV_LOCK_ASSERT (struct evdev_dev*) ;


 int EV_REP ;
 int KEY_EVENT_DOWN ;
 int KEY_EVENT_REPEAT ;
 int LIST_EMPTY (int *) ;
 int bit_test (int ,int) ;
 int evdev_event_supported (struct evdev_dev*,int ) ;
 int evdev_start_repeat (struct evdev_dev*,int) ;
 int evdev_stop_repeat (struct evdev_dev*) ;

__attribute__((used)) static void
evdev_modify_event(struct evdev_dev *evdev, uint16_t type, uint16_t code,
    int32_t *value)
{

 EVDEV_LOCK_ASSERT(evdev);

 switch (type) {
 case 128:
  if (!evdev_event_supported(evdev, EV_REP))
   break;

  if (!bit_test(evdev->ev_flags, EVDEV_FLAG_SOFTREPEAT)) {

   if (bit_test(evdev->ev_key_states, code) &&
       *value == KEY_EVENT_DOWN)
    *value = KEY_EVENT_REPEAT;
  } else {

   if (bit_test(evdev->ev_key_states, code) == !*value &&
       !LIST_EMPTY(&evdev->ev_clients)) {
    if (*value == KEY_EVENT_DOWN)
     evdev_start_repeat(evdev, code);
    else
     evdev_stop_repeat(evdev);
   }
  }
  break;

 case 129:

  break;
 }
}
