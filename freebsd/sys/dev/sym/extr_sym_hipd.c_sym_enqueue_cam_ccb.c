
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int status; int timeout; int sim_links; TYPE_2__* sym_hcb_ptr; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef TYPE_2__* hcb_p ;
typedef TYPE_3__* ccb_p ;
typedef int caddr_t ;
struct TYPE_7__ {int ch; scalar_t__ arg; union ccb* cam_ccb; } ;
struct TYPE_6__ {int cam_ccbq; } ;


 int CAM_REQ_INPROG ;
 int CAM_SIM_QUEUED ;
 int SBT_1MS ;
 int assert (int) ;
 int callout_reset_sbt (int *,int,int ,int ,int ,int ) ;
 int sym_callout ;
 int sym_insque_tail (int ,int *) ;
 int sym_qptr (int *) ;

__attribute__((used)) static void sym_enqueue_cam_ccb(ccb_p cp)
{
 hcb_p np;
 union ccb *ccb;

 ccb = cp->cam_ccb;
 np = (hcb_p) cp->arg;

 assert(!(ccb->ccb_h.status & CAM_SIM_QUEUED));
 ccb->ccb_h.status = CAM_REQ_INPROG;

 callout_reset_sbt(&cp->ch, SBT_1MS * ccb->ccb_h.timeout, 0, sym_callout,
     (caddr_t)ccb, 0);
 ccb->ccb_h.status |= CAM_SIM_QUEUED;
 ccb->ccb_h.sym_hcb_ptr = np;

 sym_insque_tail(sym_qptr(&ccb->ccb_h.sim_links), &np->cam_ccbq);
}
