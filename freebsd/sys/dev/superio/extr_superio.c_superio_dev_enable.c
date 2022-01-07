
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
 int sio_conf_enter (struct siosc*) ;
 int sio_conf_exit (struct siosc*) ;
 int sio_ldn_read (struct siosc*,int,int ) ;
 int sio_ldn_write (struct siosc*,int,int ,int ) ;

void
superio_dev_enable(device_t dev, uint8_t mask)
{
 device_t sio_dev = device_get_parent(dev);
 struct siosc *sc = device_get_softc(sio_dev);
 struct superio_devinfo *dinfo = device_get_ivars(dev);
 uint8_t v;


 if (sc->vendor == SUPERIO_VENDOR_ITE && dinfo->ldn == 7)
  return;

 sio_conf_enter(sc);
 v = sio_ldn_read(sc, dinfo->ldn, sc->enable_reg);
 v |= mask;
 sio_ldn_write(sc, dinfo->ldn, sc->enable_reg, v);
 sio_conf_exit(sc);
}
