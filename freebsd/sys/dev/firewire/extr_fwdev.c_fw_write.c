
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct uio {int uio_resid; } ;
struct fw_xferq {scalar_t__ queued; scalar_t__ bnpacket; int dmach; TYPE_3__* stproc; int stvalid; int * buf; int stfree; } ;
struct TYPE_5__ {int len; scalar_t__ payload; } ;
struct TYPE_6__ {TYPE_1__ stream; } ;
struct fw_pkt {TYPE_2__ mode; } ;
struct fw_isohdr {int dummy; } ;
struct fw_drv1 {struct fw_xferq* it; struct firewire_comm* fc; } ;
struct firewire_comm {int (* itx_enable ) (struct firewire_comm*,int ) ;} ;
struct cdev {struct fw_drv1* si_drv1; } ;
typedef int caddr_t ;
struct TYPE_7__ {scalar_t__ poffset; } ;


 scalar_t__ DEV_FWMEM (struct cdev*) ;
 int EIO ;
 int FWPRI ;
 int FW_GLOCK (struct firewire_comm*) ;
 int FW_GMTX (struct firewire_comm*) ;
 int FW_GUNLOCK (struct firewire_comm*) ;
 TYPE_3__* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,TYPE_3__*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int fw_write_async (struct fw_drv1*,struct uio*,int) ;
 scalar_t__ fwdma_v_addr (int *,scalar_t__) ;
 int hz ;
 int link ;
 int msleep (struct fw_xferq*,int ,int ,char*,int ) ;
 int physio (struct cdev*,struct uio*,int) ;
 int splfw () ;
 int splx (int) ;
 int stub1 (struct firewire_comm*,int ) ;
 int stub2 (struct firewire_comm*,int ) ;
 int uiomove (int ,int,struct uio*) ;

__attribute__((used)) static int
fw_write(struct cdev *dev, struct uio *uio, int ioflag)
{
 int err = 0;
 int s, slept = 0;
 struct fw_drv1 *d;
 struct fw_pkt *fp;
 struct firewire_comm *fc;
 struct fw_xferq *it;

 if (DEV_FWMEM(dev))
  return (physio(dev, uio, ioflag));

 d = dev->si_drv1;
 fc = d->fc;
 it = d->it;

 if (it == ((void*)0))
  return (fw_write_async(d, uio, ioflag));

 if (it->buf == ((void*)0))
  return (EIO);

 FW_GLOCK(fc);
isoloop:
 if (it->stproc == ((void*)0)) {
  it->stproc = STAILQ_FIRST(&it->stfree);
  if (it->stproc != ((void*)0)) {
   s = splfw();
   STAILQ_REMOVE_HEAD(&it->stfree, link);
   splx(s);
   it->queued = 0;
  } else if (slept == 0) {
   slept = 1;





   err = msleep(it, FW_GMTX(fc), FWPRI, "fw_write", hz);
   if (err)
    goto out;
   goto isoloop;
  } else {
   err = EIO;
   goto out;
  }
 }
 FW_GUNLOCK(fc);
 fp = (struct fw_pkt *)fwdma_v_addr(it->buf,
   it->stproc->poffset + it->queued);
 err = uiomove((caddr_t)fp, sizeof(struct fw_isohdr), uio);
 err = uiomove((caddr_t)fp->mode.stream.payload,
    fp->mode.stream.len, uio);
 it->queued++;
 if (it->queued >= it->bnpacket) {
  s = splfw();
  STAILQ_INSERT_TAIL(&it->stvalid, it->stproc, link);
  splx(s);
  it->stproc = ((void*)0);
  err = fc->itx_enable(fc, it->dmach);
 }
 if (uio->uio_resid >= sizeof(struct fw_isohdr)) {
  slept = 0;
  FW_GLOCK(fc);
  goto isoloop;
 }
 return err;

out:
 FW_GUNLOCK(fc);
 return err;
}
