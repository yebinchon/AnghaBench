
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct evdev_dev {int ev_prop_flags; } ;


 scalar_t__ INPUT_PROP_CNT ;
 int KASSERT (int,char*) ;
 int bit_set (int ,scalar_t__) ;

inline void
evdev_support_prop(struct evdev_dev *evdev, uint16_t prop)
{

 KASSERT(prop < INPUT_PROP_CNT, ("invalid evdev input property"));
 bit_set(evdev->ev_prop_flags, prop);
}
