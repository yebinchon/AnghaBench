
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
typedef int kobj_class_t ;
typedef int device_t ;


 int MIXER_TYPE_SECONDARY ;
 int mixer_count ;
 struct snd_mixer* mixer_obj_create (int ,int ,void*,int ,char const*) ;

struct snd_mixer *
mixer_create(device_t dev, kobj_class_t cls, void *devinfo, const char *desc)
{
 struct snd_mixer *m;

 m = mixer_obj_create(dev, cls, devinfo, MIXER_TYPE_SECONDARY, desc);

 if (m != ((void*)0))
  ++mixer_count;

 return (m);
}
