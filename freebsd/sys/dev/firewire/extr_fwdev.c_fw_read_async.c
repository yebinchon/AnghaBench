
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct uio {int dummy; } ;
struct tcode_info {int hdr_len; } ;
struct TYPE_9__ {size_t tcode; } ;
struct TYPE_10__ {TYPE_1__ hdr; int ld; } ;
struct fw_pkt {TYPE_2__ mode; } ;
struct TYPE_11__ {int pay_len; struct fw_pkt* payload; struct fw_pkt hdr; } ;
struct fw_xfer {TYPE_6__* fc; TYPE_3__ recv; scalar_t__ sc; } ;
struct fw_drv1 {int rq; TYPE_6__* fc; } ;
struct fw_bind {int xferlist; } ;
struct TYPE_13__ {struct tcode_info* tcode; } ;
struct TYPE_12__ {int (* irx_post ) (TYPE_4__*,int ) ;} ;


 int FWPRI ;
 int FW_GLOCK (TYPE_6__*) ;
 int FW_GMTX (TYPE_6__*) ;
 int FW_GUNLOCK (TYPE_6__*) ;
 int PAGE_SIZE ;
 struct fw_xfer* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct fw_xfer*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 TYPE_4__* fc ;
 int fw_xfer_unload (struct fw_xfer*) ;
 int link ;
 int msleep (int *,int ,int ,char*,int ) ;
 int splfw () ;
 int splx (int) ;
 int stub1 (TYPE_4__*,int ) ;
 int uiomove (struct fw_pkt*,int ,struct uio*) ;

__attribute__((used)) static int
fw_read_async(struct fw_drv1 *d, struct uio *uio, int ioflag)
{
 int err = 0, s;
 struct fw_xfer *xfer;
 struct fw_bind *fwb;
 struct fw_pkt *fp;
 struct tcode_info *tinfo;

 FW_GLOCK(d->fc);
 while ((xfer = STAILQ_FIRST(&d->rq)) == ((void*)0) && err == 0)
  err = msleep(&d->rq, FW_GMTX(d->fc), FWPRI, "fwra", 0);

 if (err != 0) {
  FW_GUNLOCK(d->fc);
  return (err);
 }

 s = splfw();
 STAILQ_REMOVE_HEAD(&d->rq, link);
 FW_GUNLOCK(xfer->fc);
 splx(s);
 fp = &xfer->recv.hdr;




 tinfo = &xfer->fc->tcode[fp->mode.hdr.tcode];
 err = uiomove(fp, tinfo->hdr_len, uio);
 if (err)
  goto out;
 err = uiomove(xfer->recv.payload, xfer->recv.pay_len, uio);

out:

 fwb = (struct fw_bind *)xfer->sc;
 fw_xfer_unload(xfer);
 xfer->recv.pay_len = PAGE_SIZE;
 FW_GLOCK(xfer->fc);
 STAILQ_INSERT_TAIL(&fwb->xferlist, xfer, link);
 FW_GUNLOCK(xfer->fc);
 return (err);
}
