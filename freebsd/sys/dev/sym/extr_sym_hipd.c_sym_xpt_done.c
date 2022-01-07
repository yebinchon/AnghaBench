
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; int * sym_hcb_ptr; int sim_links; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int hcb_p ;
typedef TYPE_2__* ccb_p ;
struct TYPE_5__ {int ch; } ;


 int CAM_SIM_QUEUED ;
 int MA_OWNED ;
 int SYM_LOCK_ASSERT (int ) ;
 int callout_stop (int *) ;
 int sym_qptr (int *) ;
 int sym_remque (int ) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void sym_xpt_done(hcb_p np, union ccb *ccb, ccb_p cp)
{

 SYM_LOCK_ASSERT(MA_OWNED);

 if (ccb->ccb_h.status & CAM_SIM_QUEUED) {
  callout_stop(&cp->ch);
  sym_remque(sym_qptr(&ccb->ccb_h.sim_links));
  ccb->ccb_h.status &= ~CAM_SIM_QUEUED;
  ccb->ccb_h.sym_hcb_ptr = ((void*)0);
 }
 xpt_done(ccb);
}
