
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct TYPE_8__ {int req_pending; TYPE_2__* cm_ccb; } ;
typedef TYPE_3__ rcb_t ;
struct TYPE_9__ {int max_outstanding_io; TYPE_3__* rcb; } ;
typedef TYPE_4__ pqisrc_softstate_t ;
struct TYPE_6__ {int status; } ;
struct TYPE_7__ {TYPE_1__ ccb_h; } ;


 int CAM_REQ_ABORTED ;
 int CAM_REQ_CMP ;
 int DBG_FUNC (char*) ;
 int xpt_done (union ccb*) ;

void os_complete_outstanding_cmds_nodevice(pqisrc_softstate_t *softs)
{
 int tag = 0;

 DBG_FUNC("IN\n");

 for (tag = 1; tag < softs->max_outstanding_io; tag++) {
  rcb_t *prcb = &softs->rcb[tag];
  if(prcb->req_pending && prcb->cm_ccb ) {
   prcb->req_pending = 0;
   prcb->cm_ccb->ccb_h.status = CAM_REQ_ABORTED | CAM_REQ_CMP;
   xpt_done((union ccb *)prcb->cm_ccb);
   prcb->cm_ccb = ((void*)0);
  }
 }

 DBG_FUNC("OUT\n");
}
