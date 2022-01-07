
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int func_code; } ;
union ccb {TYPE_2__ ccb_h; } ;
struct fsl_sata_channel {scalar_t__ batch; int doneq; int mtx; } ;
struct TYPE_3__ {int stqe; } ;


 int MA_OWNED ;
 int STAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 int XPT_FC_QUEUED ;
 int mtx_assert (int *,int ) ;
 TYPE_1__ sim_links ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
fsl_sata_done(struct fsl_sata_channel *ch, union ccb *ccb)
{

 mtx_assert(&ch->mtx, MA_OWNED);
 if ((ccb->ccb_h.func_code & XPT_FC_QUEUED) == 0 ||
     ch->batch == 0) {
  xpt_done(ccb);
  return;
 }

 STAILQ_INSERT_TAIL(&ch->doneq, &ccb->ccb_h, sim_links.stqe);
}
