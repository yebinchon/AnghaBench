
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct mpt_softc {int request_pending_list; } ;
struct TYPE_8__ {int state; int IOCStatus; } ;
typedef TYPE_1__ request_t ;
struct TYPE_9__ {int IOCStatus; } ;
typedef TYPE_2__ MSG_DEFAULT_REPLY ;


 int REQ_STATE_DONE ;
 int REQ_STATE_NEED_WAKEUP ;
 int REQ_STATE_QUEUED ;
 int REQ_STATE_TIMEDOUT ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int TRUE ;
 int le16toh (int ) ;
 int links ;
 int mpt_free_request (struct mpt_softc*,TYPE_1__*) ;
 int wakeup (TYPE_1__*) ;

__attribute__((used)) static int
mpt_sata_pass_reply_handler(struct mpt_softc *mpt, request_t *req,
 uint32_t reply_desc, MSG_DEFAULT_REPLY *reply_frame)
{

 if (req != ((void*)0)) {
  if (reply_frame != ((void*)0)) {
   req->IOCStatus = le16toh(reply_frame->IOCStatus);
  }
  req->state &= ~REQ_STATE_QUEUED;
  req->state |= REQ_STATE_DONE;
  TAILQ_REMOVE(&mpt->request_pending_list, req, links);
  if ((req->state & REQ_STATE_NEED_WAKEUP) != 0) {
   wakeup(req);
  } else if ((req->state & REQ_STATE_TIMEDOUT) != 0) {



   mpt_free_request(mpt, req);
  }
 }

 return (TRUE);
}
