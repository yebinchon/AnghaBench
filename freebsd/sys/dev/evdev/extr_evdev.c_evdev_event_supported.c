
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct evdev_dev {int ev_type_flags; } ;


 scalar_t__ EV_CNT ;
 int KASSERT (int,char*) ;
 int bit_test (int ,scalar_t__) ;

bool
evdev_event_supported(struct evdev_dev *evdev, uint16_t type)
{

 KASSERT(type < EV_CNT, ("invalid evdev event property"));
 return (bit_test(evdev->ev_type_flags, type));
}
