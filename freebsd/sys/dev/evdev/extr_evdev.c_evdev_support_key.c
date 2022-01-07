
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct evdev_dev {int ev_key_flags; } ;


 int KASSERT (int,char*) ;
 scalar_t__ KEY_CNT ;
 int bit_set (int ,scalar_t__) ;

inline void
evdev_support_key(struct evdev_dev *evdev, uint16_t code)
{

 KASSERT(code < KEY_CNT, ("invalid evdev key property"));
 bit_set(evdev->ev_key_flags, code);
}
