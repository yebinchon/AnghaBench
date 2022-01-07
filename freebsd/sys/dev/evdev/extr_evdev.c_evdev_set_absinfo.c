
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint16_t ;
struct input_absinfo {int maximum; } ;
struct evdev_dev {TYPE_1__* ev_absinfo; } ;
struct TYPE_3__ {int maximum; } ;


 size_t ABS_CNT ;
 size_t ABS_MT_SLOT ;
 int KASSERT (int,char*) ;
 int MAX_MT_SLOTS ;
 TYPE_1__* evdev_alloc_absinfo () ;
 int memcpy (TYPE_1__*,struct input_absinfo*,int) ;

inline void
evdev_set_absinfo(struct evdev_dev *evdev, uint16_t axis,
    struct input_absinfo *absinfo)
{

 KASSERT(axis < ABS_CNT, ("invalid evdev abs property"));

 if (axis == ABS_MT_SLOT &&
     (absinfo->maximum < 1 || absinfo->maximum >= MAX_MT_SLOTS))
  return;

 if (evdev->ev_absinfo == ((void*)0))
  evdev->ev_absinfo = evdev_alloc_absinfo();

 if (axis == ABS_MT_SLOT)
  evdev->ev_absinfo[ABS_MT_SLOT].maximum = absinfo->maximum;
 else
  memcpy(&evdev->ev_absinfo[axis], absinfo,
      sizeof(struct input_absinfo));
}
