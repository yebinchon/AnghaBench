
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {int dummy; } ;


 int M_EVDEV ;
 int M_WAITOK ;
 int M_ZERO ;
 struct evdev_dev* malloc (int,int ,int) ;

struct evdev_dev *
evdev_alloc(void)
{

 return malloc(sizeof(struct evdev_dev), M_EVDEV, M_WAITOK | M_ZERO);
}
