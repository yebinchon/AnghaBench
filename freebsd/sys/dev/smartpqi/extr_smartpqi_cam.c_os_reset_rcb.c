
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int encrypt_enable; int req_pending; scalar_t__ resp_qid; scalar_t__ ioaccel_handle; int * cm_ccb; int * sgt; scalar_t__ nseg; scalar_t__ bcount; int * cm_data; scalar_t__ cm_flags; int * softs; int * cdbp; int * dvp; int tag; int * req; int * error_info; } ;
typedef TYPE_1__ rcb_t ;


 int INVALID_ELEM ;

void os_reset_rcb( rcb_t *rcb )
{
 rcb->error_info = ((void*)0);
 rcb->req = ((void*)0);
 rcb->status = -1;
 rcb->tag = INVALID_ELEM;
 rcb->dvp = ((void*)0);
 rcb->cdbp = ((void*)0);
 rcb->softs = ((void*)0);
 rcb->cm_flags = 0;
 rcb->cm_data = ((void*)0);
 rcb->bcount = 0;
 rcb->nseg = 0;
 rcb->sgt = ((void*)0);
 rcb->cm_ccb = ((void*)0);
 rcb->encrypt_enable = 0;
 rcb->ioaccel_handle = 0;
 rcb->resp_qid = 0;
 rcb->req_pending = 0;
}
