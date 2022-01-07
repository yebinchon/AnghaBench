
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpioc_softc {scalar_t__ sc_ctl_dev; } ;
typedef int device_t ;


 int bus_generic_detach (int ) ;
 int destroy_dev (scalar_t__) ;
 struct gpioc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
gpioc_detach(device_t dev)
{
 struct gpioc_softc *sc = device_get_softc(dev);
 int err;

 if (sc->sc_ctl_dev)
  destroy_dev(sc->sc_ctl_dev);

 if ((err = bus_generic_detach(dev)) != 0)
  return (err);

 return (0);
}
