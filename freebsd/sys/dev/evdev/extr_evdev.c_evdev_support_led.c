
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct evdev_dev {int ev_led_flags; } ;


 int KASSERT (int,char*) ;
 scalar_t__ LED_CNT ;
 int bit_set (int ,scalar_t__) ;

inline void
evdev_support_led(struct evdev_dev *evdev, uint16_t code)
{

 KASSERT(code < LED_CNT, ("invalid evdev led property"));
 bit_set(evdev->ev_led_flags, code);
}
