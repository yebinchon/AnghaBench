
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct spigen_softc {int sc_mtx; int sc_dev; } ;
struct cdev {int si_drv1; } ;
typedef int device_t ;


 int device_busy (int ) ;
 struct spigen_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
spigen_open(struct cdev *cdev, int oflags, int devtype, struct thread *td)
{
 device_t dev;
 struct spigen_softc *sc;

 dev = cdev->si_drv1;
 sc = device_get_softc(dev);

 mtx_lock(&sc->sc_mtx);
 device_busy(sc->sc_dev);
 mtx_unlock(&sc->sc_mtx);

 return (0);
}
