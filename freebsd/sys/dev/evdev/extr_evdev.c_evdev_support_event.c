
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct evdev_dev {int ev_type_flags; } ;


 scalar_t__ EV_CNT ;
 int KASSERT (int,char*) ;
 int bit_set (int ,scalar_t__) ;

inline void
evdev_support_event(struct evdev_dev *evdev, uint16_t type)
{

 KASSERT(type < EV_CNT, ("invalid evdev event property"));
 bit_set(evdev->ev_type_flags, type);
}
