
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snddev_info {int flags; } ;
typedef int device_t ;


 struct snddev_info* device_get_softc (int ) ;

void
pcm_setflags(device_t dev, uint32_t val)
{
 struct snddev_info *d = device_get_softc(dev);

 d->flags = val;
}
