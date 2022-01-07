
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct psm_softc {int state; int unit; } ;
struct cdev {struct psm_softc* si_drv1; } ;


 int EBUSY ;
 int ENXIO ;
 int PSM_EV_OPEN_A ;
 int PSM_EV_OPEN_R ;
 int PSM_OPEN ;
 int PSM_VALID ;
 int devclass_get_device (int ,int ) ;
 int device_busy (int ) ;
 int device_unbusy (int ) ;
 int psm_devclass ;
 int psmopen (struct psm_softc*) ;

__attribute__((used)) static int
psm_cdev_open(struct cdev *dev, int flag, int fmt, struct thread *td)
{
 struct psm_softc *sc;
 int err = 0;


 sc = dev->si_drv1;
 if ((sc == ((void*)0)) || (sc->state & PSM_VALID) == 0) {

  return (ENXIO);
 }


 if (sc->state & PSM_OPEN)
  return (EBUSY);

 device_busy(devclass_get_device(psm_devclass, sc->unit));





  err = psmopen(sc);

 if (err == 0)
  sc->state |= PSM_OPEN;
 else
  device_unbusy(devclass_get_device(psm_devclass, sc->unit));

 return (err);
}
