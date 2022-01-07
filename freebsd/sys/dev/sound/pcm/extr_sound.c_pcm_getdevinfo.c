
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snddev_info {void* devinfo; } ;
typedef int device_t ;


 struct snddev_info* device_get_softc (int ) ;

void *
pcm_getdevinfo(device_t dev)
{
 struct snddev_info *d = device_get_softc(dev);

 return d->devinfo;
}
