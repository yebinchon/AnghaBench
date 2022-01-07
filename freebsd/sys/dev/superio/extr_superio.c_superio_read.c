
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
 int sio_ldn_read (struct siosc*,int ,int ) ;

uint8_t
superio_read(device_t dev, uint8_t reg)
{
 device_t sio_dev = device_get_parent(dev);
 struct siosc *sc = device_get_softc(sio_dev);
 struct superio_devinfo *dinfo = device_get_ivars(dev);
 uint8_t v;

 sio_conf_enter(sc);
 v = sio_ldn_read(sc, dinfo->ldn, reg);
 sio_conf_exit(sc);
 return (v);
}
