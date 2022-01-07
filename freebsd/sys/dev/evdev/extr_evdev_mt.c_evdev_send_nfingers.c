
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {int dummy; } ;
typedef size_t int32_t ;


 int EVDEV_LOCK_ASSERT (struct evdev_dev*) ;
 int EV_KEY ;
 int * evdev_fngmap ;
 int evdev_send_event (struct evdev_dev*,int ,int ,int) ;
 size_t nitems (int *) ;

__attribute__((used)) static void
evdev_send_nfingers(struct evdev_dev *evdev, int32_t nfingers)
{
 int32_t i;

 EVDEV_LOCK_ASSERT(evdev);

 if (nfingers > nitems(evdev_fngmap))
  nfingers = nitems(evdev_fngmap);

 for (i = 0; i < nitems(evdev_fngmap); i++)
  evdev_send_event(evdev, EV_KEY, evdev_fngmap[i],
      nfingers == i + 1);
}
