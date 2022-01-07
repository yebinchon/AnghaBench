
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_info {int flags; void* devinfo; int dev; int methods; int name; int lock; } ;
typedef int kobj_class_t ;
typedef int device_t ;


 int AC97_F_EAPD_INV ;
 int M_AC97 ;
 int M_WAITOK ;
 int M_ZERO ;
 int SD_F_SOFTPCMVOL ;
 int device_get_name (int ) ;
 char* device_get_nameunit (int ) ;
 int device_get_unit (int ) ;
 int kobj_create (int ,int ,int) ;
 struct ac97_info* malloc (int,int ,int) ;
 int pcm_getflags (int ) ;
 int pcm_setflags (int ,int) ;
 scalar_t__ resource_int_value (int ,int ,char*,int*) ;
 int snd_mtxcreate (int ,char*) ;
 int snprintf (int ,int,char*,char*) ;

struct ac97_info *
ac97_create(device_t dev, void *devinfo, kobj_class_t cls)
{
 struct ac97_info *codec;
 int i;

 codec = malloc(sizeof(*codec), M_AC97, M_WAITOK | M_ZERO);
 snprintf(codec->name, sizeof(codec->name), "%s:ac97",
     device_get_nameunit(dev));
 codec->lock = snd_mtxcreate(codec->name, "ac97 codec");
 codec->methods = kobj_create(cls, M_AC97, M_WAITOK | M_ZERO);
 codec->dev = dev;
 codec->devinfo = devinfo;
 codec->flags = 0;

 if (resource_int_value(device_get_name(dev), device_get_unit(dev),
     "eapdinv", &i) == 0 && i != 0)
  codec->flags |= AC97_F_EAPD_INV;

 if (resource_int_value(device_get_name(dev), device_get_unit(dev),
     "softpcmvol", &i) == 0 && i != 0)
  pcm_setflags(dev, pcm_getflags(dev) | SD_F_SOFTPCMVOL);

 return codec;
}
