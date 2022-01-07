
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct psm_softc {int state; int unit; int * async; } ;
struct cdev {struct psm_softc* si_drv1; } ;


 int ENXIO ;
 int PSM_EV_OPEN_A ;
 int PSM_EV_OPEN_R ;
 int PSM_OPEN ;
 int PSM_VALID ;
 int devclass_get_device (int ,int ) ;
 int device_unbusy (int ) ;
 int funsetown (int **) ;
 int psm_devclass ;
 int psmclose (struct psm_softc*) ;

__attribute__((used)) static int
psm_cdev_close(struct cdev *dev, int flag, int fmt, struct thread *td)
{
 struct psm_softc *sc;
 int err = 0;


 sc = dev->si_drv1;
 if ((sc == ((void*)0)) || (sc->state & PSM_VALID) == 0) {

  return (ENXIO);
 }





  err = psmclose(sc);

 if (err == 0) {
  sc->state &= ~PSM_OPEN;

  if (sc->async != ((void*)0)) {
   funsetown(&sc->async);
   sc->async = ((void*)0);
  }
  device_unbusy(devclass_get_device(psm_devclass, sc->unit));
 }

 return (err);
}
