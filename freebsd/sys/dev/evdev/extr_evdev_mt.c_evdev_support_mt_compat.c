
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evdev_dev {TYPE_1__* ev_absinfo; int ev_abs_flags; int ev_prop_flags; } ;
typedef size_t int32_t ;
struct TYPE_2__ {int resolution; int flat; int fuzz; int maximum; int minimum; int value; } ;


 int BTN_TOUCH ;
 int EV_KEY ;
 size_t INPUT_PROP_DIRECT ;
 scalar_t__ MAXIMAL_MT_SLOT (struct evdev_dev*) ;
 scalar_t__ bit_test (int ,size_t) ;
 size_t** evdev_mtstmap ;
 int evdev_support_abs (struct evdev_dev*,size_t,int ,int ,int ,int ,int ,int ) ;
 int evdev_support_event (struct evdev_dev*,int ) ;
 int evdev_support_key (struct evdev_dev*,int ) ;
 int evdev_support_nfingers (struct evdev_dev*,scalar_t__) ;
 size_t nitems (size_t**) ;

void
evdev_support_mt_compat(struct evdev_dev *evdev)
{
 int32_t i;

 if (evdev->ev_absinfo == ((void*)0))
  return;

 evdev_support_event(evdev, EV_KEY);
 evdev_support_key(evdev, BTN_TOUCH);


 if (!bit_test(evdev->ev_prop_flags, INPUT_PROP_DIRECT))
  evdev_support_nfingers(evdev, MAXIMAL_MT_SLOT(evdev) + 1);


 for (i = 0; i < nitems(evdev_mtstmap); i++)
  if (bit_test(evdev->ev_abs_flags, evdev_mtstmap[i][0]))
   evdev_support_abs(evdev, evdev_mtstmap[i][1],
       evdev->ev_absinfo[evdev_mtstmap[i][0]].value,
       evdev->ev_absinfo[evdev_mtstmap[i][0]].minimum,
       evdev->ev_absinfo[evdev_mtstmap[i][0]].maximum,
       evdev->ev_absinfo[evdev_mtstmap[i][0]].fuzz,
       evdev->ev_absinfo[evdev_mtstmap[i][0]].flat,
       evdev->ev_absinfo[evdev_mtstmap[i][0]].resolution);
}
