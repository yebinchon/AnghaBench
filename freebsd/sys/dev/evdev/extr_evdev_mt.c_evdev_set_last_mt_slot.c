
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct evdev_dev {TYPE_2__* ev_mt; int ev_report_count; } ;
typedef size_t int32_t ;
struct TYPE_4__ {size_t ev_mt_last_reported_slot; TYPE_1__* ev_mt_slots; } ;
struct TYPE_3__ {int ev_report; } ;



void
evdev_set_last_mt_slot(struct evdev_dev *evdev, int32_t slot)
{

 evdev->ev_mt->ev_mt_slots[slot].ev_report = evdev->ev_report_count;
 evdev->ev_mt->ev_mt_last_reported_slot = slot;
}
