
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct evdev_dev {int ev_abs_flags; int * ev_absinfo; } ;


 scalar_t__ ABS_CNT ;
 int KASSERT (int,char*) ;
 int bit_set (int ,scalar_t__) ;
 int * evdev_alloc_absinfo () ;

inline void
evdev_set_abs_bit(struct evdev_dev *evdev, uint16_t code)
{

 KASSERT(code < ABS_CNT, ("invalid evdev abs property"));
 if (evdev->ev_absinfo == ((void*)0))
  evdev->ev_absinfo = evdev_alloc_absinfo();
 bit_set(evdev->ev_abs_flags, code);
}
