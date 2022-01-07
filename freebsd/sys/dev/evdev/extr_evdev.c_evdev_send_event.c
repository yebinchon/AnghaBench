
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct evdev_dev {int dummy; } ;
typedef int int32_t ;
typedef enum evdev_sparse_result { ____Placeholder_evdev_sparse_result } evdev_sparse_result ;


 int ABS_MT_SLOT ;
 int CURRENT_MT_SLOT (struct evdev_dev*) ;
 int EVDEV_LOCK_ASSERT (struct evdev_dev*) ;
 int EV_ABS ;



 int evdev_propagate_event (struct evdev_dev*,int ,int ,int ) ;
 int evdev_sparse_event (struct evdev_dev*,int ,int ,int ) ;

void
evdev_send_event(struct evdev_dev *evdev, uint16_t type, uint16_t code,
    int32_t value)
{
 enum evdev_sparse_result sparse;

 EVDEV_LOCK_ASSERT(evdev);

 sparse = evdev_sparse_event(evdev, type, code, value);
 switch (sparse) {
 case 129:

  evdev_propagate_event(evdev, EV_ABS, ABS_MT_SLOT,
      CURRENT_MT_SLOT(evdev));

 case 130:
  evdev_propagate_event(evdev, type, code, value);

 case 128:
  break;
 }
}
