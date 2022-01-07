
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_absinfo {int dummy; } ;


 int ABS_CNT ;
 int M_EVDEV ;
 int M_WAITOK ;
 int M_ZERO ;
 struct input_absinfo* malloc (int,int ,int) ;

__attribute__((used)) static struct input_absinfo *
evdev_alloc_absinfo(void)
{

 return (malloc(sizeof(struct input_absinfo) * ABS_CNT, M_EVDEV,
     M_WAITOK | M_ZERO));
}
