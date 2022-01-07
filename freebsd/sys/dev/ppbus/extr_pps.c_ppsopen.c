
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct pps_data {int busy; int lock; int ppbus; int lastdata; int timeout; int ppsdev; } ;
struct cdev {int si_drv2; struct pps_data* si_drv1; } ;
typedef int device_t ;


 int EINTR ;
 int IRQENABLE ;
 int PCD ;
 int PPB_INTR ;
 int PPB_IN_EPP_MODE (int ) ;
 int PPB_PS2 ;
 int PPB_WAIT ;
 int PRVERBOSE (char*,int,int ) ;
 int SELECTIN ;
 int callout_reset (int *,int,int ,struct pps_data*) ;
 int nINIT ;
 int ppb_lock (int ) ;
 int ppb_rdtr (int ) ;
 scalar_t__ ppb_request_bus (int ,int ,int) ;
 int ppb_set_mode (int ,int ) ;
 int ppb_unlock (int ) ;
 int ppb_wctr (int ,int) ;
 int ppshcpoll ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
ppsopen(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 struct pps_data *sc = dev->si_drv1;
 device_t ppbus = sc->ppbus;
 int subdev = (intptr_t)dev->si_drv2;
 int i;






 sx_xlock(&sc->lock);
 ppb_lock(ppbus);
 if (!sc->busy) {
  device_t ppsdev = sc->ppsdev;

  if (ppb_request_bus(ppbus, ppsdev, PPB_WAIT|PPB_INTR)) {
   ppb_unlock(ppbus);
   sx_xunlock(&sc->lock);
   return (EINTR);
  }

  i = ppb_set_mode(sc->ppbus, PPB_PS2);
  PRVERBOSE("EPP: %d %d\n", i, PPB_IN_EPP_MODE(sc->ppbus));

  i = IRQENABLE | PCD | nINIT | SELECTIN;
  ppb_wctr(ppbus, i);
 }
 if (subdev > 0 && !(sc->busy & ~1)) {

  callout_reset(&sc->timeout, 1, ppshcpoll, sc);
  sc->lastdata = ppb_rdtr(sc->ppbus);
 }
 sc->busy |= (1 << subdev);
 ppb_unlock(ppbus);
 sx_xunlock(&sc->lock);
 return(0);
}
