
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_xfer {int fc; scalar_t__ sc; } ;
struct fw_drv1 {int rq; } ;
struct fw_bind {struct fw_drv1* sc; } ;


 int FW_GLOCK (int ) ;
 int FW_GUNLOCK (int ) ;
 int STAILQ_INSERT_TAIL (int *,struct fw_xfer*,int ) ;
 int link ;
 int wakeup (int *) ;

__attribute__((used)) static void
fw_hand(struct fw_xfer *xfer)
{
 struct fw_bind *fwb;
 struct fw_drv1 *d;

 fwb = (struct fw_bind *)xfer->sc;
 d = fwb->sc;
 FW_GLOCK(xfer->fc);
 STAILQ_INSERT_TAIL(&d->rq, xfer, link);
 FW_GUNLOCK(xfer->fc);
 wakeup(&d->rq);
}
