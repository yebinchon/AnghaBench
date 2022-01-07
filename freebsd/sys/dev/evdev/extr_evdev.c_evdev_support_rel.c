
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct evdev_dev {int ev_rel_flags; } ;


 int KASSERT (int,char*) ;
 scalar_t__ REL_CNT ;
 int bit_set (int ,scalar_t__) ;

inline void
evdev_support_rel(struct evdev_dev *evdev, uint16_t code)
{

 KASSERT(code < REL_CNT, ("invalid evdev rel property"));
 bit_set(evdev->ev_rel_flags, code);
}
