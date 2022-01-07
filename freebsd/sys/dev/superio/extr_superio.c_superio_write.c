
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct superio_devinfo {int ldn; } ;
struct siosc {int dummy; } ;
typedef int device_t ;


 struct superio_devinfo* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 struct siosc* device_get_softc (int ) ;
 int sio_conf_enter (struct siosc*) ;
 int sio_conf_exit (struct siosc*) ;
 int sio_ldn_write (struct siosc*,int ,int ,int ) ;

void
superio_write(device_t dev, uint8_t reg, uint8_t val)
{
 device_t sio_dev = device_get_parent(dev);
 struct siosc *sc = device_get_softc(sio_dev);
 struct superio_devinfo *dinfo = device_get_ivars(dev);

 sio_conf_enter(sc);
 sio_ldn_write(sc, dinfo->ldn, reg, val);
 sio_conf_exit(sc);
}
