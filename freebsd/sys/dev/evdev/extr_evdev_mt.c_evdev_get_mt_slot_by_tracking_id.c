
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct evdev_dev {scalar_t__ ev_report_count; TYPE_2__* ev_mt; } ;
typedef int int32_t ;
struct TYPE_4__ {TYPE_1__* ev_mt_slots; } ;
struct TYPE_3__ {scalar_t__ ev_report; } ;


 int ABS_MT_TRACKING_ID ;
 int MAXIMAL_MT_SLOT (struct evdev_dev*) ;
 int evdev_get_mt_value (struct evdev_dev*,int,int ) ;

int32_t
evdev_get_mt_slot_by_tracking_id(struct evdev_dev *evdev, int32_t tracking_id)
{
 int32_t tr_id, slot, free_slot = -1;

 for (slot = 0; slot <= MAXIMAL_MT_SLOT(evdev); slot++) {
  tr_id = evdev_get_mt_value(evdev, slot, ABS_MT_TRACKING_ID);
  if (tr_id == tracking_id)
   return (slot);






  if (free_slot == -1 && tr_id == -1 &&
      evdev->ev_mt->ev_mt_slots[slot].ev_report !=
      evdev->ev_report_count)
   free_slot = slot;
 }

 return (free_slot);
}
