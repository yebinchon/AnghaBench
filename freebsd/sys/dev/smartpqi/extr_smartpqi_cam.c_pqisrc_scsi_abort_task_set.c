
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef size_t uint32_t ;
struct TYPE_6__ {size_t tag; int status; int dvp; } ;
typedef TYPE_1__ rcb_t ;
struct TYPE_7__ {int taglist; TYPE_1__* rcb; } ;
typedef TYPE_2__ pqisrc_softstate_t ;


 int DBG_FUNC (char*,...) ;
 int PQI_STATUS_SUCCESS ;
 int SOP_TASK_MANAGEMENT_FUNCTION_ABORT_TASK_SET ;
 size_t pqisrc_get_tag (int *) ;
 int pqisrc_put_tag (int *,size_t) ;
 int pqisrc_send_tmf (TYPE_2__*,int ,TYPE_1__*,int ,int ) ;

__attribute__((used)) static int
pqisrc_scsi_abort_task_set(pqisrc_softstate_t *softs, union ccb *ccb)
{
 rcb_t *rcb = ((void*)0);
 uint32_t tag = 0;
 int rval = PQI_STATUS_SUCCESS;

 DBG_FUNC("IN\n");

 tag = pqisrc_get_tag(&softs->taglist);
 rcb = &softs->rcb[tag];
 rcb->tag = tag;

 rval = pqisrc_send_tmf(softs, rcb->dvp, rcb, 0,
   SOP_TASK_MANAGEMENT_FUNCTION_ABORT_TASK_SET);

 if (rval == PQI_STATUS_SUCCESS) {
  rval = rcb->status;
 }

 pqisrc_put_tag(&softs->taglist,rcb->tag);

 DBG_FUNC("OUT rval = %d\n", rval);

 return rval;
}
