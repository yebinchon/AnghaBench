
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snddev_info {int flags; } ;
typedef int device_t ;


 struct snddev_info* device_get_softc (int ) ;

uint32_t
pcm_getflags(device_t dev)
{
 struct snddev_info *d = device_get_softc(dev);

 return d->flags;
}
