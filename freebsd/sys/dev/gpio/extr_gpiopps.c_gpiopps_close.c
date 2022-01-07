
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct pps_softc {int pps_mtx; int dev; } ;
struct cdev {struct pps_softc* si_drv1; } ;


 int device_unbusy (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
gpiopps_close(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 struct pps_softc *sc = dev->si_drv1;





 mtx_lock(&sc->pps_mtx);
 device_unbusy(sc->dev);
 mtx_unlock(&sc->pps_mtx);

 return 0;
}
