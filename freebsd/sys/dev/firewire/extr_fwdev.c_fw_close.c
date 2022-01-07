
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_xferq {int flag; int dmach; int q; int queued; } ;
struct fw_xfer {scalar_t__ resp; } ;
struct fw_drv1 {struct fw_xferq* it; struct fw_xferq* ir; int xferlist; int binds; struct firewire_comm* fc; } ;
struct fw_bind {struct fw_xferq* it; struct fw_xferq* ir; int xferlist; int binds; struct firewire_comm* fc; } ;
struct firewire_comm {int (* itx_disable ) (struct firewire_comm*,int ) ;int (* irx_disable ) (struct firewire_comm*,int ) ;} ;
struct cdev {struct fw_drv1* si_drv1; } ;
typedef int fw_proc ;


 scalar_t__ DEV_FWMEM (struct cdev*) ;
 int EINVAL ;
 int FWXFERQ_CHTAGMASK ;
 int FWXFERQ_MODEMASK ;
 int FWXFERQ_OPEN ;
 int FWXFERQ_RUNNING ;
 int M_FW ;
 void* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int chlist ;
 int free (struct fw_drv1*,int ) ;
 int fw_bindremove (struct firewire_comm*,struct fw_drv1*) ;
 int fw_xfer_done (struct fw_xfer*) ;
 int fw_xferlist_remove (int *) ;
 int fwdev_freebuf (struct fw_xferq*) ;
 int fwmem_close (struct cdev*,int,int,int *) ;
 int link ;
 int stub1 (struct firewire_comm*,int ) ;
 int stub2 (struct firewire_comm*,int ) ;

__attribute__((used)) static int
fw_close(struct cdev *dev, int flags, int fmt, fw_proc *td)
{
 struct firewire_comm *fc;
 struct fw_drv1 *d;
 struct fw_xfer *xfer;
 struct fw_bind *fwb;
 int err = 0;

 if (DEV_FWMEM(dev))
  return fwmem_close(dev, flags, fmt, td);

 d = dev->si_drv1;
 fc = d->fc;


 for (fwb = STAILQ_FIRST(&d->binds); fwb != ((void*)0);
     fwb = STAILQ_FIRST(&d->binds)) {
  fw_bindremove(fc, fwb);
  STAILQ_REMOVE_HEAD(&d->binds, chlist);
  fw_xferlist_remove(&fwb->xferlist);
  free(fwb, M_FW);
 }
 if (d->ir != ((void*)0)) {
  struct fw_xferq *ir = d->ir;

  if ((ir->flag & FWXFERQ_OPEN) == 0)
   return (EINVAL);
  if (ir->flag & FWXFERQ_RUNNING) {
   ir->flag &= ~FWXFERQ_RUNNING;
   fc->irx_disable(fc, ir->dmach);
  }

  fwdev_freebuf(ir);

  for (xfer = STAILQ_FIRST(&ir->q);
      xfer != ((void*)0); xfer = STAILQ_FIRST(&ir->q)) {
   ir->queued--;
   STAILQ_REMOVE_HEAD(&ir->q, link);

   xfer->resp = 0;
   fw_xfer_done(xfer);
  }
  ir->flag &= ~(FWXFERQ_OPEN | FWXFERQ_MODEMASK |
      FWXFERQ_CHTAGMASK);
  d->ir = ((void*)0);

 }
 if (d->it != ((void*)0)) {
  struct fw_xferq *it = d->it;

  if ((it->flag & FWXFERQ_OPEN) == 0)
   return (EINVAL);
  if (it->flag & FWXFERQ_RUNNING) {
   it->flag &= ~FWXFERQ_RUNNING;
   fc->itx_disable(fc, it->dmach);
  }

  fwdev_freebuf(it);
  it->flag &= ~(FWXFERQ_OPEN |
      FWXFERQ_MODEMASK | FWXFERQ_CHTAGMASK);
  d->it = ((void*)0);
 }
 free(dev->si_drv1, M_FW);
 dev->si_drv1 = ((void*)0);

 return err;
}
