
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_absinfo {int dummy; } ;


 int M_EVDEV ;
 int free (struct input_absinfo*,int ) ;

__attribute__((used)) static void
evdev_free_absinfo(struct input_absinfo *absinfo)
{

 free(absinfo, M_EVDEV);
}
