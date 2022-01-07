
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int status; int response; } ;
typedef TYPE_2__ scsi_rsp_t ;
struct TYPE_12__ {TYPE_2__ scsi_rsp; } ;
struct TYPE_15__ {TYPE_1__ ipdu; } ;
struct TYPE_14__ {int ccb; TYPE_4__ pdu; } ;
typedef TYPE_3__ pduq_t ;
typedef TYPE_4__ pdu_t ;
struct TYPE_16__ {int isc; } ;
typedef TYPE_5__ isc_session_t ;


 int _scsi_done (TYPE_5__*,int ,int ,int ,TYPE_3__*) ;
 int debug_called (int) ;
 int pdu_free (int ,TYPE_3__*) ;

void
iscsi_done(isc_session_t *sp, pduq_t *opq, pduq_t *pq)
{
     pdu_t *pp = &pq->pdu;
     scsi_rsp_t *cmd = &pp->ipdu.scsi_rsp;

     debug_called(8);

     _scsi_done(sp, cmd->response, cmd->status, opq->ccb, pq);

     pdu_free(sp->isc, opq);
}
