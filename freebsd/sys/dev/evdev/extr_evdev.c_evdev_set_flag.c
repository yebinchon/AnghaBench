
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct evdev_dev {int ev_flags; } ;


 scalar_t__ EVDEV_FLAG_CNT ;
 int KASSERT (int,char*) ;
 int bit_set (int ,scalar_t__) ;

inline void
evdev_set_flag(struct evdev_dev *evdev, uint16_t flag)
{

 KASSERT(flag < EVDEV_FLAG_CNT, ("invalid evdev flag property"));
 bit_set(evdev->ev_flags, flag);
}
