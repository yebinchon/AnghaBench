
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int status; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct TYPE_10__ {union ccb* ccb; } ;
typedef TYPE_2__ pduq_t ;
struct TYPE_11__ {int isc; } ;
typedef TYPE_3__ isc_session_t ;


 int CAM_REQ_ABORTED ;
 int XPT_DONE (TYPE_3__*,union ccb*) ;
 int debug_called (int) ;
 int pdu_free (int ,TYPE_2__*) ;

void
iscsi_reject(isc_session_t *sp, pduq_t *opq, pduq_t *pq)
{
     union ccb *ccb = opq->ccb;


     debug_called(8);

     ccb->ccb_h.status = CAM_REQ_ABORTED;
     XPT_DONE(sp, ccb);

     pdu_free(sp->isc, opq);
}
