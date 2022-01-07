
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evdev_dev {TYPE_1__* ev_mt; } ;
typedef int int32_t ;
struct TYPE_2__ {int ev_mt_last_reported_slot; } ;



int32_t
evdev_get_last_mt_slot(struct evdev_dev *evdev)
{

 return (evdev->ev_mt->ev_mt_last_reported_slot);
}
