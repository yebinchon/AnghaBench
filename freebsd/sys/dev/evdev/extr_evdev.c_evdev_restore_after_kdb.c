
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {int ev_key_states; int ev_kdb_led_states; int ev_led_states; } ;


 int EVDEV_LOCK_ASSERT (struct evdev_dev*) ;
 int EV_KEY ;
 int EV_LED ;
 int EV_SYN ;
 int KEY_CNT ;
 int KEY_EVENT_UP ;
 int LED_CNT ;
 int LED_MAX ;
 int SYN_REPORT ;
 int bit_nclear (int ,int ,int ) ;
 scalar_t__ bit_test (int ,int) ;
 int evdev_send_event (struct evdev_dev*,int ,int,int) ;
 int evdev_stop_repeat (struct evdev_dev*) ;

void
evdev_restore_after_kdb(struct evdev_dev *evdev)
{
 int code;

 EVDEV_LOCK_ASSERT(evdev);


 for (code = 0; code < LED_CNT; code++)
  if (bit_test(evdev->ev_kdb_led_states, code))
   evdev_send_event(evdev, EV_LED, code,
       !bit_test(evdev->ev_led_states, code));
 bit_nclear(evdev->ev_kdb_led_states, 0, LED_MAX);


 evdev_stop_repeat(evdev);
 for (code = 0; code < KEY_CNT; code++) {
  if (bit_test(evdev->ev_key_states, code)) {
   evdev_send_event(evdev, EV_KEY, code, KEY_EVENT_UP);
   evdev_send_event(evdev, EV_SYN, SYN_REPORT, 1);
  }
 }
}
