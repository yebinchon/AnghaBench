
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct mpt_softc {int request_pending_list; } ;
struct TYPE_7__ {int state; int * ccb; } ;
typedef TYPE_1__ request_t ;
typedef int MSG_DEFAULT_REPLY ;


 int REQ_STATE_DONE ;
 int REQ_STATE_NEED_WAKEUP ;
 int REQ_STATE_QUEUED ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int TRUE ;
 int links ;
 int mpt_free_request (struct mpt_softc*,TYPE_1__*) ;
 int mpt_raid_reply_frame_handler (struct mpt_softc*,TYPE_1__*,int *) ;
 int wakeup (TYPE_1__*) ;

__attribute__((used)) static int
mpt_raid_reply_handler(struct mpt_softc *mpt, request_t *req,
    uint32_t reply_desc, MSG_DEFAULT_REPLY *reply_frame)
{
 int free_req;

 if (req == ((void*)0))
  return (TRUE);

 free_req = TRUE;
 if (reply_frame != ((void*)0))
  free_req = mpt_raid_reply_frame_handler(mpt, req, reply_frame);






 req->state &= ~REQ_STATE_QUEUED;
 req->state |= REQ_STATE_DONE;
 TAILQ_REMOVE(&mpt->request_pending_list, req, links);

 if ((req->state & REQ_STATE_NEED_WAKEUP) != 0) {
  wakeup(req);
 } else if (free_req) {
  mpt_free_request(mpt, req);
 }

 return (TRUE);
}
