
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mpt_softc {int dummy; } ;
struct mpt_raid_action_result {void* action_status; int action_data; } ;
struct TYPE_6__ {scalar_t__ req_vbuf; void* IOCStatus; } ;
typedef TYPE_1__ request_t ;
struct TYPE_8__ {int ActionStatus; int ActionData; int IOCStatus; } ;
struct TYPE_7__ {int Action; } ;
typedef TYPE_2__ MSG_RAID_ACTION_REQUEST ;
typedef TYPE_3__ MSG_RAID_ACTION_REPLY ;
typedef int MSG_DEFAULT_REPLY ;




 struct mpt_raid_action_result* REQ_TO_RAID_ACTION_RESULT (TYPE_1__*) ;
 int TRUE ;
 void* le16toh (int ) ;
 int memcpy (int *,int *,int) ;
 int mpt_prt (struct mpt_softc*,char*) ;

__attribute__((used)) static int
mpt_raid_reply_frame_handler(struct mpt_softc *mpt, request_t *req,
    MSG_DEFAULT_REPLY *reply_frame)
{
 MSG_RAID_ACTION_REPLY *reply;
 struct mpt_raid_action_result *action_result;
 MSG_RAID_ACTION_REQUEST *rap;

 reply = (MSG_RAID_ACTION_REPLY *)reply_frame;
 req->IOCStatus = le16toh(reply->IOCStatus);
 rap = (MSG_RAID_ACTION_REQUEST *)req->req_vbuf;

 switch (rap->Action) {
 case 128:
  mpt_prt(mpt, "QUIESCE PHYSIO DONE\n");
  break;
 case 129:
  mpt_prt(mpt, "ENABLY PHYSIO DONE\n");
  break;
 default:
  break;
 }
 action_result = REQ_TO_RAID_ACTION_RESULT(req);
 memcpy(&action_result->action_data, &reply->ActionData,
     sizeof(action_result->action_data));
 action_result->action_status = le16toh(reply->ActionStatus);
 return (TRUE);
}
