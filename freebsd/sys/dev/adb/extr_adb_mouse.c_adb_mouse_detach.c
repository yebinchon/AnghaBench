
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_mouse_softc {int sc_cv; int sc_mtx; int cdev; } ;
typedef int device_t ;


 int adb_set_autopoll (int ,int ) ;
 int cv_destroy (int *) ;
 int destroy_dev (int ) ;
 struct adb_mouse_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
adb_mouse_detach(device_t dev)
{
 struct adb_mouse_softc *sc;

 adb_set_autopoll(dev,0);

 sc = device_get_softc(dev);
 destroy_dev(sc->cdev);

 mtx_destroy(&sc->sc_mtx);
 cv_destroy(&sc->sc_cv);

 return (0);
}
