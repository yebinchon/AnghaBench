
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbp_dev {TYPE_1__* target; } ;
struct fw_xfer {scalar_t__ sc; } ;
struct TYPE_2__ {int xferlist; int sbp; } ;


 int SBP_LOCK_ASSERT (int ) ;
 int STAILQ_INSERT_TAIL (int *,struct fw_xfer*,int ) ;
 int fw_xfer_unload (struct fw_xfer*) ;
 int link ;

__attribute__((used)) static __inline void
sbp_xfer_free(struct fw_xfer *xfer)
{
 struct sbp_dev *sdev;

 sdev = (struct sbp_dev *)xfer->sc;
 fw_xfer_unload(xfer);
 SBP_LOCK_ASSERT(sdev->target->sbp);
 STAILQ_INSERT_TAIL(&sdev->target->xferlist, xfer, link);
}
