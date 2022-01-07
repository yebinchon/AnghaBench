
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct evdev_dev {int ev_kdb_active; int ev_flags; scalar_t__ ev_report_opened; int ev_led_states; int ev_kdb_led_states; } ;
typedef scalar_t__ int32_t ;


 int EINVAL ;
 int EVDEV_ENTER (struct evdev_dev*) ;
 int EVDEV_EXIT (struct evdev_dev*) ;
 int EVDEV_FLAG_MT_AUTOREL ;
 int EVDEV_FLAG_MT_STCOMPAT ;
 int EV_LED ;
 int EV_SYN ;
 scalar_t__ SCHEDULER_STOPPED () ;
 int SYN_REPORT ;
 int bit_set (int ,int) ;
 scalar_t__ bit_test (int ,int ) ;
 scalar_t__ evdev_check_event (struct evdev_dev*,int ,int ,scalar_t__) ;
 int evdev_modify_event (struct evdev_dev*,int ,int ,scalar_t__*) ;
 int evdev_restore_after_kdb (struct evdev_dev*) ;
 int evdev_send_event (struct evdev_dev*,int ,int ,scalar_t__) ;
 int evdev_send_mt_autorel (struct evdev_dev*) ;
 int evdev_send_mt_compat (struct evdev_dev*) ;
 scalar_t__ kdb_active ;

int
evdev_push_event(struct evdev_dev *evdev, uint16_t type, uint16_t code,
    int32_t value)
{

 if (evdev_check_event(evdev, type, code, value) != 0)
  return (EINVAL);





 if (kdb_active || SCHEDULER_STOPPED()) {
  evdev->ev_kdb_active = 1;
  if (type == EV_LED)
   bit_set(evdev->ev_kdb_led_states,
       bit_test(evdev->ev_led_states, code) != value);
  return (0);
 }

 EVDEV_ENTER(evdev);


 if (evdev->ev_kdb_active) {
  evdev->ev_kdb_active = 0;
  evdev_restore_after_kdb(evdev);
 }

 evdev_modify_event(evdev, type, code, &value);
 if (type == EV_SYN && code == SYN_REPORT &&
      bit_test(evdev->ev_flags, EVDEV_FLAG_MT_AUTOREL))
  evdev_send_mt_autorel(evdev);
 if (type == EV_SYN && code == SYN_REPORT && evdev->ev_report_opened &&
     bit_test(evdev->ev_flags, EVDEV_FLAG_MT_STCOMPAT))
  evdev_send_mt_compat(evdev);
 evdev_send_event(evdev, type, code, value);

 EVDEV_EXIT(evdev);

 return (0);
}
