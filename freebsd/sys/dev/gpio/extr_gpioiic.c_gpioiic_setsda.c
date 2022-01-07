
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpioiic_softc {int sda_pin; } ;
typedef int device_t ;


 struct gpioiic_softc* device_get_softc (int ) ;
 int gpioiic_setpin (struct gpioiic_softc*,int ,int) ;

__attribute__((used)) static void
gpioiic_setsda(device_t dev, int val)
{
 struct gpioiic_softc *sc = device_get_softc(dev);

 gpioiic_setpin(sc, sc->sda_pin, val);
}
