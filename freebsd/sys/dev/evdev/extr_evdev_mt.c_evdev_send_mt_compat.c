
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {int ev_prop_flags; int ev_abs_flags; } ;
typedef scalar_t__ int32_t ;


 int ABS_MT_TRACKING_ID ;
 int ABS_PRESSURE ;
 int BTN_TOUCH ;
 int EVDEV_LOCK_ASSERT (struct evdev_dev*) ;
 int EV_ABS ;
 int EV_KEY ;
 int INPUT_PROP_DIRECT ;
 scalar_t__ bit_test (int ,int ) ;
 scalar_t__ evdev_count_fingers (struct evdev_dev*) ;
 int evdev_get_mt_value (struct evdev_dev*,int ,int ) ;
 int ** evdev_mtstmap ;
 int evdev_send_event (struct evdev_dev*,int ,int ,int) ;
 int evdev_send_nfingers (struct evdev_dev*,scalar_t__) ;
 scalar_t__ nitems (int **) ;

void
evdev_send_mt_compat(struct evdev_dev *evdev)
{
 int32_t nfingers, i;

 EVDEV_LOCK_ASSERT(evdev);

 nfingers = evdev_count_fingers(evdev);
 evdev_send_event(evdev, EV_KEY, BTN_TOUCH, nfingers > 0);

 if (evdev_get_mt_value(evdev, 0, ABS_MT_TRACKING_ID) != -1)

  for (i = 0; i < nitems(evdev_mtstmap); i++)
   if (bit_test(evdev->ev_abs_flags, evdev_mtstmap[i][1]))
    evdev_send_event(evdev, EV_ABS,
        evdev_mtstmap[i][1],
        evdev_get_mt_value(evdev, 0,
        evdev_mtstmap[i][0]));


 if (!bit_test(evdev->ev_prop_flags, INPUT_PROP_DIRECT))
  evdev_send_nfingers(evdev, nfingers);

 if (nfingers == 0)
  evdev_send_event(evdev, EV_ABS, ABS_PRESSURE, 0);
}
