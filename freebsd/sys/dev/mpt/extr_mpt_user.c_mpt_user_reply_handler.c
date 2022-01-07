
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct mpt_user_raid_action_result {int action_data; int volume_status; int action_status; } ;
struct mpt_softc {int request_pending_list; } ;
struct TYPE_7__ {int state; scalar_t__ req_vbuf; int IOCStatus; } ;
typedef TYPE_1__ request_t ;
struct TYPE_8__ {int ActionData; int VolumeStatus; int ActionStatus; int IOCStatus; } ;
typedef TYPE_2__ MSG_RAID_ACTION_REPLY ;
typedef int MSG_DEFAULT_REPLY ;


 int MPT_RQSL (struct mpt_softc*) ;
 int REQ_STATE_DONE ;
 int REQ_STATE_NEED_WAKEUP ;
 int REQ_STATE_QUEUED ;
 int REQ_STATE_TIMEDOUT ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int TRUE ;
 int bcopy (int *,int ,int) ;
 int le16toh (int ) ;
 int links ;
 int mpt_free_request (struct mpt_softc*,TYPE_1__*) ;
 int wakeup (TYPE_1__*) ;

__attribute__((used)) static int
mpt_user_reply_handler(struct mpt_softc *mpt, request_t *req,
    uint32_t reply_desc, MSG_DEFAULT_REPLY *reply_frame)
{
 MSG_RAID_ACTION_REPLY *reply;
 struct mpt_user_raid_action_result *res;

 if (req == ((void*)0))
  return (TRUE);

 if (reply_frame != ((void*)0)) {
  reply = (MSG_RAID_ACTION_REPLY *)reply_frame;
  req->IOCStatus = le16toh(reply->IOCStatus);
  res = (struct mpt_user_raid_action_result *)
      (((uint8_t *)req->req_vbuf) + MPT_RQSL(mpt));
  res->action_status = reply->ActionStatus;
  res->volume_status = reply->VolumeStatus;
  bcopy(&reply->ActionData, res->action_data,
      sizeof(res->action_data));
 }

 req->state &= ~REQ_STATE_QUEUED;
 req->state |= REQ_STATE_DONE;
 TAILQ_REMOVE(&mpt->request_pending_list, req, links);

 if ((req->state & REQ_STATE_NEED_WAKEUP) != 0) {
  wakeup(req);
 } else if ((req->state & REQ_STATE_TIMEDOUT) != 0) {



  mpt_free_request(mpt, req);
 }

 return (TRUE);
}
