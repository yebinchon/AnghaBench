
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct siosc {int revid; } ;
typedef int device_t ;


 int device_get_parent (int ) ;
 struct siosc* device_get_softc (int ) ;

uint8_t
superio_revid(device_t dev)
{
 device_t sio_dev = device_get_parent(dev);
 struct siosc *sc = device_get_softc(sio_dev);

 return (sc->revid);
}
