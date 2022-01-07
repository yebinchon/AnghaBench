
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct pps_softc {int pps_mtx; int dev; } ;
struct cdev {struct pps_softc* si_drv1; } ;


 scalar_t__ DS_BUSY ;
 int device_busy (int ) ;
 scalar_t__ device_get_state (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
gpiopps_open(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 struct pps_softc *sc = dev->si_drv1;


 mtx_lock(&sc->pps_mtx);
 if (device_get_state(sc->dev) < DS_BUSY) {
  device_busy(sc->dev);
 }
 mtx_unlock(&sc->pps_mtx);

 return 0;
}
