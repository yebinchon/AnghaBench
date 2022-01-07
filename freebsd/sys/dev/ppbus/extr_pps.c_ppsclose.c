
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct pps_data {int busy; int lock; int ppbus; int ppsdev; int timeout; TYPE_2__* pps; } ;
struct cdev {int si_drv2; struct pps_data* si_drv1; } ;
typedef int device_t ;
struct TYPE_3__ {scalar_t__ mode; } ;
struct TYPE_4__ {TYPE_1__ ppsparam; } ;


 int PPB_COMPATIBLE ;
 int callout_stop (int *) ;
 int ppb_lock (int ) ;
 int ppb_release_bus (int ,int ) ;
 int ppb_set_mode (int ,int ) ;
 int ppb_unlock (int ) ;
 int ppb_wctr (int ,int ) ;
 int ppb_wdtr (int ,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
ppsclose(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 struct pps_data *sc = dev->si_drv1;
 int subdev = (intptr_t)dev->si_drv2;

 sx_xlock(&sc->lock);
 sc->pps[subdev].ppsparam.mode = 0;
 ppb_lock(sc->ppbus);
 sc->busy &= ~(1 << subdev);
 if (subdev > 0 && !(sc->busy & ~1))
  callout_stop(&sc->timeout);
 if (!sc->busy) {
  device_t ppsdev = sc->ppsdev;
  device_t ppbus = sc->ppbus;

  ppb_wdtr(ppbus, 0);
  ppb_wctr(ppbus, 0);

  ppb_set_mode(ppbus, PPB_COMPATIBLE);
  ppb_release_bus(ppbus, ppsdev);
 }
 ppb_unlock(sc->ppbus);
 sx_xunlock(&sc->lock);
 return(0);
}
