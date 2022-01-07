
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct evdev_dev {TYPE_2__* ev_mt; } ;
typedef size_t int32_t ;
typedef int int16_t ;
struct TYPE_4__ {TYPE_1__* ev_mt_slots; } ;
struct TYPE_3__ {size_t* ev_mt_states; } ;


 size_t ABS_MT_INDEX (int ) ;

inline void
evdev_set_mt_value(struct evdev_dev *evdev, int32_t slot, int16_t code,
    int32_t value)
{

 evdev->ev_mt->ev_mt_slots[slot].ev_mt_states[ABS_MT_INDEX(code)] =
     value;
}
