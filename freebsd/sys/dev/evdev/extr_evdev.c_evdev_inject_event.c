
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct evdev_dev {int ev_lock_type; TYPE_1__* ev_methods; int ev_flags; } ;
typedef int int32_t ;
struct TYPE_2__ {int (* ev_event ) (struct evdev_dev*,int,int,int ) ;} ;


 int EINVAL ;
 int EVDEV_FLAG_SOFTREPEAT ;
 int EVDEV_LOCK (struct evdev_dev*) ;
 int EVDEV_UNLOCK (struct evdev_dev*) ;




 int EV_LOCK_INTERNAL ;






 int bit_test (int ,int ) ;
 int evdev_push_event (struct evdev_dev*,int,int,int ) ;
 int stub1 (struct evdev_dev*,int,int,int ) ;

int
evdev_inject_event(struct evdev_dev *evdev, uint16_t type, uint16_t code,
    int32_t value)
{
 int ret = 0;

 switch (type) {
 case 131:

  if (bit_test(evdev->ev_flags, EVDEV_FLAG_SOFTREPEAT))
   goto push;

 case 134:
 case 133:
 case 130:
 case 136:
  if (evdev->ev_methods != ((void*)0) &&
      evdev->ev_methods->ev_event != ((void*)0))
   evdev->ev_methods->ev_event(evdev, type, code, value);






  if (type == 134 || type == 131)
   break;

 case 128:
 case 135:
 case 132:
 case 137:
 case 129:
push:
  if (evdev->ev_lock_type != EV_LOCK_INTERNAL)
   EVDEV_LOCK(evdev);
  ret = evdev_push_event(evdev, type, code, value);
  if (evdev->ev_lock_type != EV_LOCK_INTERNAL)
   EVDEV_UNLOCK(evdev);
  break;

 default:
  ret = EINVAL;
 }

 return (ret);
}
