
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ccb_hdr {size_t target_id; scalar_t__ target_lun; } ;
union ccb {struct ccb_hdr ccb_h; } ;
typedef TYPE_1__* tcb_p ;
typedef TYPE_2__* hcb_p ;
struct TYPE_6__ {size_t myaddr; int istat_sem; TYPE_1__* target; } ;
struct TYPE_5__ {int to_reset; } ;


 int CAM_DEV_NOT_THERE ;
 int CAM_REQ_CMP ;
 int MA_OWNED ;
 int OUTB (int ,int) ;
 int SEM ;
 int SIGP ;
 scalar_t__ SYM_CONF_MAX_LUN ;
 size_t SYM_CONF_MAX_TARGET ;
 int SYM_LOCK_ASSERT (int ) ;
 int nc_istat ;
 int sym_xpt_done2 (TYPE_2__*,union ccb*,int ) ;

__attribute__((used)) static void sym_reset_dev(hcb_p np, union ccb *ccb)
{
 tcb_p tp;
 struct ccb_hdr *ccb_h = &ccb->ccb_h;

 SYM_LOCK_ASSERT(MA_OWNED);

 if (ccb_h->target_id == np->myaddr ||
     ccb_h->target_id >= SYM_CONF_MAX_TARGET ||
     ccb_h->target_lun >= SYM_CONF_MAX_LUN) {
  sym_xpt_done2(np, ccb, CAM_DEV_NOT_THERE);
  return;
 }

 tp = &np->target[ccb_h->target_id];

 tp->to_reset = 1;
 sym_xpt_done2(np, ccb, CAM_REQ_CMP);

 np->istat_sem = SEM;
 OUTB (nc_istat, SIGP|SEM);
}
