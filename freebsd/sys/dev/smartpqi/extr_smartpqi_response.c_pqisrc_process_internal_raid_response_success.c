
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int req_pending; int status; } ;
typedef TYPE_1__ rcb_t ;
typedef int pqisrc_softstate_t ;


 int DBG_FUNC (char*) ;
 int REQUEST_SUCCESS ;

void pqisrc_process_internal_raid_response_success(pqisrc_softstate_t *softs,
       rcb_t *rcb)
{
 DBG_FUNC("IN");

 rcb->status = REQUEST_SUCCESS;
 rcb->req_pending = 0;

 DBG_FUNC("OUT");
}
