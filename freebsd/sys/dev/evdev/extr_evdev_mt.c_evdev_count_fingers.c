
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {int dummy; } ;
typedef scalar_t__ int32_t ;


 int ABS_MT_TRACKING_ID ;
 scalar_t__ MAXIMAL_MT_SLOT (struct evdev_dev*) ;
 int evdev_get_mt_value (struct evdev_dev*,scalar_t__,int ) ;

__attribute__((used)) static int32_t
evdev_count_fingers(struct evdev_dev *evdev)
{
 int32_t nfingers = 0, i;

 for (i = 0; i <= MAXIMAL_MT_SLOT(evdev); i++)
  if (evdev_get_mt_value(evdev, i, ABS_MT_TRACKING_ID) != -1)
   nfingers++;

 return (nfingers);
}
