
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct evdev_dev {int* ev_rep; } ;


 int KASSERT (int,char*) ;
 size_t REP_CNT ;

inline void
evdev_set_repeat_params(struct evdev_dev *evdev, uint16_t property, int value)
{

 KASSERT(property < REP_CNT, ("invalid evdev repeat property"));
 evdev->ev_rep[property] = value;
}
