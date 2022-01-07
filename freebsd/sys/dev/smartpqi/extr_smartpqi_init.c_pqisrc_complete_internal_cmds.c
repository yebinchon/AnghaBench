
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int req_pending; int status; } ;
typedef TYPE_1__ rcb_t ;
struct TYPE_6__ {int max_outstanding_io; TYPE_1__* rcb; } ;
typedef TYPE_2__ pqisrc_softstate_t ;


 int REQUEST_FAILED ;
 scalar_t__ is_internal_req (TYPE_1__*) ;

void pqisrc_complete_internal_cmds(pqisrc_softstate_t *softs)
{
 int tag = 0;
 rcb_t *rcb;

 for (tag = 1; tag <= softs->max_outstanding_io; tag++) {
  rcb = &softs->rcb[tag];
  if(rcb->req_pending && is_internal_req(rcb)) {
   rcb->status = REQUEST_FAILED;
   rcb->req_pending = 0;
  }
 }
}
