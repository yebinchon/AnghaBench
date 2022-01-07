
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {int dummy; } ;
typedef size_t int32_t ;


 size_t MIN (int ,size_t) ;
 int * evdev_fngmap ;
 int evdev_support_key (struct evdev_dev*,int ) ;
 int nitems (int *) ;

void
evdev_support_nfingers(struct evdev_dev *evdev, int32_t nfingers)
{
 int32_t i;

 for (i = 0; i < MIN(nitems(evdev_fngmap), nfingers); i++)
  evdev_support_key(evdev, evdev_fngmap[i]);
}
