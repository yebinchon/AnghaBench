
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snddev_info {int bufsz; } ;
typedef int device_t ;


 int RANGE (int,unsigned int,unsigned int) ;
 int device_get_name (int ) ;
 struct snddev_info* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,int,int,...) ;
 scalar_t__ resource_int_value (int ,int ,char*,int*) ;

unsigned int
pcm_getbuffersize(device_t dev, unsigned int minbufsz, unsigned int deflt, unsigned int maxbufsz)
{
 struct snddev_info *d = device_get_softc(dev);
 int sz, x;

 sz = 0;
 if (resource_int_value(device_get_name(dev), device_get_unit(dev), "buffersize", &sz) == 0) {
  x = sz;
  RANGE(sz, minbufsz, maxbufsz);
  if (x != sz)
   device_printf(dev, "'buffersize=%d' hint is out of range (%d-%d), using %d\n", x, minbufsz, maxbufsz, sz);
  x = minbufsz;
  while (x < sz)
   x <<= 1;
  if (x > sz)
   x >>= 1;
  if (x != sz) {
   device_printf(dev, "'buffersize=%d' hint is not a power of 2, using %d\n", sz, x);
   sz = x;
  }
 } else {
  sz = deflt;
 }

 d->bufsz = sz;

 return sz;
}
