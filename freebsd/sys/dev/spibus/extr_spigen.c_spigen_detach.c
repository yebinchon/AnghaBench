
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spigen_softc {int sc_mtx; scalar_t__ sc_cdev; scalar_t__ sc_adev; } ;
typedef int device_t ;


 int destroy_dev (scalar_t__) ;
 struct spigen_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
spigen_detach(device_t dev)
{
 struct spigen_softc *sc;

 sc = device_get_softc(dev);






 if (sc->sc_cdev)
  destroy_dev(sc->sc_cdev);

 mtx_destroy(&sc->sc_mtx);

 return (0);
}
