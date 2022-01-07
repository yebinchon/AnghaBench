
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * kobj_class_t ;


 int ac97mixer_class ;

kobj_class_t
ac97_getmixerclass(void)
{
 return &ac97mixer_class;
}
