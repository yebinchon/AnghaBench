
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpioths_softc {int callout; } ;
typedef scalar_t__ device_t ;


 int GPIOTHS_POLLTIME ;
 int callout_schedule (int *,int) ;
 int device_get_parent (scalar_t__) ;
 struct gpioths_softc* device_get_softc (scalar_t__) ;
 int gpioths_dht_readbytes (int ,scalar_t__) ;
 int hz ;

__attribute__((used)) static void
gpioths_poll(void *arg)
{
 struct gpioths_softc *sc;
 device_t dev;

 dev = (device_t)arg;
 sc = device_get_softc(dev);

 gpioths_dht_readbytes(device_get_parent(dev), dev);
 callout_schedule(&sc->callout, GPIOTHS_POLLTIME * hz);
}
