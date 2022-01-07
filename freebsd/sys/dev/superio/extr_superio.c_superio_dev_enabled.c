
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct superio_devinfo {int ldn; } ;
struct siosc {scalar_t__ vendor; int enable_reg; } ;
typedef int device_t ;


 scalar_t__ SUPERIO_VENDOR_ITE ;
 struct superio_devinfo* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 struct siosc* device_get_softc (int ) ;
 int superio_read (int ,int ) ;

bool
superio_dev_enabled(device_t dev, uint8_t mask)
{
 device_t sio_dev = device_get_parent(dev);
 struct siosc *sc = device_get_softc(sio_dev);
 struct superio_devinfo *dinfo = device_get_ivars(dev);
 uint8_t v;


 if (sc->vendor == SUPERIO_VENDOR_ITE && dinfo->ldn == 7)
  return (1);

 v = superio_read(dev, sc->enable_reg);
 return ((v & mask) != 0);
}
