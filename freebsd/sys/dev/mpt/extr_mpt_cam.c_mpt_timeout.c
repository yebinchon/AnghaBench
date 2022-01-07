
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* ccb_req_ptr; struct mpt_softc* ccb_mpt_ptr; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct mpt_softc {int request_timeout_list; int request_pending_list; } ;
struct TYPE_7__ {int state; int ccb; int serno; } ;
typedef TYPE_2__ request_t ;


 int MPT_LOCK_ASSERT (struct mpt_softc*) ;
 int REQ_STATE_QUEUED ;
 int REQ_STATE_TIMEDOUT ;
 int TAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_2__*,int ) ;
 int links ;
 int mpt_prt (struct mpt_softc*,char*,TYPE_2__*,int ,union ccb*,int ) ;
 int mpt_wakeup_recovery_thread (struct mpt_softc*) ;

__attribute__((used)) static void
mpt_timeout(void *arg)
{
 union ccb *ccb;
 struct mpt_softc *mpt;
 request_t *req;

 ccb = (union ccb *)arg;
 mpt = ccb->ccb_h.ccb_mpt_ptr;

 MPT_LOCK_ASSERT(mpt);
 req = ccb->ccb_h.ccb_req_ptr;
 mpt_prt(mpt, "request %p:%u timed out for ccb %p (req->ccb %p)\n", req,
     req->serno, ccb, req->ccb);

 if ((req->state & REQ_STATE_QUEUED) == REQ_STATE_QUEUED) {
  TAILQ_REMOVE(&mpt->request_pending_list, req, links);
  TAILQ_INSERT_TAIL(&mpt->request_timeout_list, req, links);
  req->state |= REQ_STATE_TIMEDOUT;
  mpt_wakeup_recovery_thread(mpt);
 }
}
