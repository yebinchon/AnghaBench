
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etherswitch_softc {scalar_t__ sc_devnode; } ;
typedef int device_t ;


 int destroy_dev (scalar_t__) ;
 scalar_t__ device_get_softc (int ) ;

__attribute__((used)) static int
etherswitch_detach(device_t dev)
{
 struct etherswitch_softc *sc = (struct etherswitch_softc *)device_get_softc(dev);

 if (sc->sc_devnode)
  destroy_dev(sc->sc_devnode);

 return (0);
}
