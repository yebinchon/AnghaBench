
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpioiic_softc {int scl_pin; } ;
typedef int device_t ;


 struct gpioiic_softc* device_get_softc (int ) ;
 int gpioiic_getpin (struct gpioiic_softc*,int ) ;

__attribute__((used)) static int
gpioiic_getscl(device_t dev)
{
 struct gpioiic_softc *sc = device_get_softc(dev);

 return (gpioiic_getpin(sc, sc->scl_pin));
}
