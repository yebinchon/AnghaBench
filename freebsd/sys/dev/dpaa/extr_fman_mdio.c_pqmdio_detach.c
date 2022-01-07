
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqmdio_softc {int sc_lock; } ;
typedef int device_t ;


 struct pqmdio_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
pqmdio_detach(device_t dev)
{
 struct pqmdio_softc *sc;

 sc = device_get_softc(dev);

 mtx_destroy(&sc->sc_lock);

 return (0);
}
