
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ads111x_softc {int lock; } ;
typedef int device_t ;


 struct ads111x_softc* device_get_softc (int ) ;
 int sx_destroy (int *) ;

__attribute__((used)) static int
ads111x_detach(device_t dev)
{
 struct ads111x_softc *sc;

 sc = device_get_softc(dev);

 sx_destroy(&sc->lock);
 return (0);
}
