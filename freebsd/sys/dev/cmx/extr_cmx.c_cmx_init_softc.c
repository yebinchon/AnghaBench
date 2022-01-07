
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmx_softc {int timeout; int dev; } ;
typedef int device_t ;


 int CCID_DRIVER_MINIMUM_TIMEOUT ;
 struct cmx_softc* device_get_softc (int ) ;

void
cmx_init_softc(device_t dev)
{
 struct cmx_softc *sc = device_get_softc(dev);
 sc->dev = dev;
 sc->timeout = CCID_DRIVER_MINIMUM_TIMEOUT;
}
