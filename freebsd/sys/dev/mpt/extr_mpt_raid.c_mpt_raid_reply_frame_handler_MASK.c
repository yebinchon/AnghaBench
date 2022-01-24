#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mpt_softc {int dummy; } ;
struct mpt_raid_action_result {void* action_status; int /*<<< orphan*/  action_data; } ;
struct TYPE_6__ {scalar_t__ req_vbuf; void* IOCStatus; } ;
typedef  TYPE_1__ request_t ;
struct TYPE_8__ {int /*<<< orphan*/  ActionStatus; int /*<<< orphan*/  ActionData; int /*<<< orphan*/  IOCStatus; } ;
struct TYPE_7__ {int Action; } ;
typedef  TYPE_2__ MSG_RAID_ACTION_REQUEST ;
typedef  TYPE_3__ MSG_RAID_ACTION_REPLY ;
typedef  int /*<<< orphan*/  MSG_DEFAULT_REPLY ;

/* Variables and functions */
#define  MPI_RAID_ACTION_ENABLE_PHYS_IO 129 
#define  MPI_RAID_ACTION_QUIESCE_PHYS_IO 128 
 struct mpt_raid_action_result* FUNC0 (TYPE_1__*) ; 
 int TRUE ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mpt_softc*,char*) ; 

__attribute__((used)) static int
FUNC4(struct mpt_softc *mpt, request_t *req,
    MSG_DEFAULT_REPLY *reply_frame)
{
	MSG_RAID_ACTION_REPLY *reply;
	struct mpt_raid_action_result *action_result;
	MSG_RAID_ACTION_REQUEST *rap;

	reply = (MSG_RAID_ACTION_REPLY *)reply_frame;
	req->IOCStatus = FUNC1(reply->IOCStatus);
	rap = (MSG_RAID_ACTION_REQUEST *)req->req_vbuf;
	
	switch (rap->Action) {
	case MPI_RAID_ACTION_QUIESCE_PHYS_IO:
		FUNC3(mpt, "QUIESCE PHYSIO DONE\n");
		break;
	case MPI_RAID_ACTION_ENABLE_PHYS_IO:
		FUNC3(mpt, "ENABLY PHYSIO DONE\n");
		break;
	default:
		break;
	}
	action_result = FUNC0(req);
	FUNC2(&action_result->action_data, &reply->ActionData,
	    sizeof(action_result->action_data));
	action_result->action_status = FUNC1(reply->ActionStatus);
	return (TRUE);
}