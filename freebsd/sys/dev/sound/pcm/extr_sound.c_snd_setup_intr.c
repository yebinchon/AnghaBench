
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snddev_info {int flags; } ;
struct resource {int dummy; } ;
typedef int driver_intr_t ;
typedef int device_t ;


 int INTR_MPSAFE ;
 int INTR_TYPE_AV ;
 int SD_F_MPSAFE ;
 int bus_setup_intr (int ,struct resource*,int,int *,int ,void*,void**) ;
 struct snddev_info* device_get_softc (int ) ;

int
snd_setup_intr(device_t dev, struct resource *res, int flags, driver_intr_t hand, void *param, void **cookiep)
{
 struct snddev_info *d;

 flags &= INTR_MPSAFE;
 flags |= INTR_TYPE_AV;
 d = device_get_softc(dev);
 if (d != ((void*)0) && (flags & INTR_MPSAFE))
  d->flags |= SD_F_MPSAFE;

 return bus_setup_intr(dev, res, flags, ((void*)0), hand, param, cookiep);
}
