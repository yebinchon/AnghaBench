
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_drv1 {int rq; int binds; int fc; } ;
struct firewire_softc {int fc; } ;
struct cdev {int si_flags; struct fw_drv1* si_drv1; } ;
typedef int fw_proc ;


 int DEV2SUB (struct cdev*) ;
 int DEV2UNIT (struct cdev*) ;
 scalar_t__ DEV_FWMEM (struct cdev*) ;
 int EBUSY ;
 int ENXIO ;
 int FW_GLOCK (int ) ;
 int FW_GUNLOCK (int ) ;
 int GID_OPERATOR ;
 int M_FW ;
 int M_WAITOK ;
 int M_ZERO ;
 int SI_NAMED ;
 int STAILQ_INIT (int *) ;
 int UID_ROOT ;
 int dev2unit (struct cdev*) ;
 struct firewire_softc* devclass_get_softc (int ,int) ;
 int firewire_cdevsw ;
 int firewire_devclass ;
 int fwmem_open (struct cdev*,int,int,int *) ;
 int make_dev (int *,int ,int ,int ,int,char*,int,int) ;
 struct fw_drv1* malloc (int,int ,int) ;

__attribute__((used)) static int
fw_open(struct cdev *dev, int flags, int fmt, fw_proc *td)
{
 int err = 0;
 int unit = DEV2UNIT(dev);
 struct fw_drv1 *d;
 struct firewire_softc *sc;

 if (DEV_FWMEM(dev))
  return fwmem_open(dev, flags, fmt, td);

 sc = devclass_get_softc(firewire_devclass, unit);
 if (sc == ((void*)0))
  return (ENXIO);

 FW_GLOCK(sc->fc);
 if (dev->si_drv1 != ((void*)0)) {
  FW_GUNLOCK(sc->fc);
  return (EBUSY);
 }

 dev->si_drv1 = (void *)-1;
 FW_GUNLOCK(sc->fc);

 dev->si_drv1 = malloc(sizeof(struct fw_drv1), M_FW, M_WAITOK | M_ZERO);

 if ((dev->si_flags & SI_NAMED) == 0) {
  int unit = DEV2UNIT(dev);
  int sub = DEV2SUB(dev);

  make_dev(&firewire_cdevsw, dev2unit(dev),
      UID_ROOT, GID_OPERATOR, 0660, "fw%d.%d", unit, sub);
 }

 d = dev->si_drv1;
 d->fc = sc->fc;
 STAILQ_INIT(&d->binds);
 STAILQ_INIT(&d->rq);

 return err;
}
