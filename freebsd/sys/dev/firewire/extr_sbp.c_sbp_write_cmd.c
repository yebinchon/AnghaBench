
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sbp_target {int n_xfer; TYPE_7__* fwdev; TYPE_8__* sbp; int xferlist; } ;
struct sbp_dev {struct sbp_target* target; TYPE_4__* login; } ;
struct TYPE_13__ {int tcode; int dst; scalar_t__ pri; scalar_t__ tlrt; scalar_t__ dest_lo; int dest_hi; } ;
struct TYPE_14__ {TYPE_5__ wreqq; } ;
struct fw_pkt {TYPE_6__ mode; } ;
struct TYPE_11__ {int pay_len; struct fw_pkt hdr; int spd; } ;
struct TYPE_9__ {scalar_t__ pay_len; } ;
struct fw_xfer {TYPE_3__ send; scalar_t__ sc; int fc; TYPE_1__ recv; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_10__ {int fc; } ;
struct TYPE_16__ {TYPE_2__ fd; } ;
struct TYPE_15__ {int dst; int speed; } ;
struct TYPE_12__ {scalar_t__ cmd_lo; int cmd_hi; } ;


 int FWLOCALBUS ;
 int FWTCODE_WREQB ;
 int M_SBP ;
 int SBP_LOCK_ASSERT (TYPE_8__*) ;
 struct fw_xfer* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 scalar_t__ debug ;
 struct fw_xfer* fw_xfer_alloc_buf (int ,int,int ) ;
 int link ;
 int max_speed ;
 int min (int ,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static struct fw_xfer *
sbp_write_cmd(struct sbp_dev *sdev, int tcode, int offset)
{
 struct fw_xfer *xfer;
 struct fw_pkt *fp;
 struct sbp_target *target;
 int new = 0;

 SBP_LOCK_ASSERT(sdev->target->sbp);

 target = sdev->target;
 xfer = STAILQ_FIRST(&target->xferlist);
 if (xfer == ((void*)0)) {
  if (target->n_xfer > 5 ) {
   printf("sbp: no more xfer for this target\n");
   return (((void*)0));
  }
  xfer = fw_xfer_alloc_buf(M_SBP, 8, 0);
  if (xfer == ((void*)0)) {
   printf("sbp: fw_xfer_alloc_buf failed\n");
   return ((void*)0);
  }
  target->n_xfer++;
  if (debug)
   printf("sbp: alloc %d xfer\n", target->n_xfer);
  new = 1;
 } else {
  STAILQ_REMOVE_HEAD(&target->xferlist, link);
 }

 if (new) {
  xfer->recv.pay_len = 0;
  xfer->send.spd = min(sdev->target->fwdev->speed, max_speed);
  xfer->fc = sdev->target->sbp->fd.fc;
 }

 if (tcode == FWTCODE_WREQB)
  xfer->send.pay_len = 8;
 else
  xfer->send.pay_len = 0;

 xfer->sc = (caddr_t)sdev;
 fp = &xfer->send.hdr;
 fp->mode.wreqq.dest_hi = sdev->login->cmd_hi;
 fp->mode.wreqq.dest_lo = sdev->login->cmd_lo + offset;
 fp->mode.wreqq.tlrt = 0;
 fp->mode.wreqq.tcode = tcode;
 fp->mode.wreqq.pri = 0;
 fp->mode.wreqq.dst = FWLOCALBUS | sdev->target->fwdev->dst;

 return xfer;
}
