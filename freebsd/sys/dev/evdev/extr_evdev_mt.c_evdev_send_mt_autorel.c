
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct evdev_dev {scalar_t__ ev_report_count; TYPE_2__* ev_mt; } ;
typedef size_t int32_t ;
struct TYPE_4__ {TYPE_1__* ev_mt_slots; } ;
struct TYPE_3__ {scalar_t__ ev_report; } ;


 int ABS_MT_SLOT ;
 int ABS_MT_TRACKING_ID ;
 int EVDEV_LOCK_ASSERT (struct evdev_dev*) ;
 int EV_ABS ;
 size_t MAXIMAL_MT_SLOT (struct evdev_dev*) ;
 int evdev_get_mt_value (struct evdev_dev*,size_t,int ) ;
 int evdev_send_event (struct evdev_dev*,int ,int ,int) ;

void
evdev_send_mt_autorel(struct evdev_dev *evdev)
{
 int32_t slot;

 EVDEV_LOCK_ASSERT(evdev);

 for (slot = 0; slot <= MAXIMAL_MT_SLOT(evdev); slot++) {
  if (evdev->ev_mt->ev_mt_slots[slot].ev_report !=
      evdev->ev_report_count &&
      evdev_get_mt_value(evdev, slot, ABS_MT_TRACKING_ID) != -1){
   evdev_send_event(evdev, EV_ABS, ABS_MT_SLOT, slot);
   evdev_send_event(evdev, EV_ABS, ABS_MT_TRACKING_ID,
       -1);
  }
 }
}
