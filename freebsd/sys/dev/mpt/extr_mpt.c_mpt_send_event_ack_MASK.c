#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct mpt_softc {int dummy; } ;
struct TYPE_8__ {scalar_t__ req_vbuf; } ;
typedef  TYPE_1__ request_t ;
struct TYPE_10__ {void* MsgContext; void* EventContext; void* Event; int /*<<< orphan*/  Function; } ;
struct TYPE_9__ {int /*<<< orphan*/  EventContext; int /*<<< orphan*/  Event; } ;
typedef  TYPE_2__ MSG_EVENT_NOTIFY_REPLY ;
typedef  TYPE_3__ MSG_EVENT_ACK ;

/* Variables and functions */
 int /*<<< orphan*/  MPI_FUNCTION_EVENT_ACK ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mpt_softc*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(struct mpt_softc *mpt, request_t *ack_req,
		   MSG_EVENT_NOTIFY_REPLY *msg, uint32_t context)
{
	MSG_EVENT_ACK *ackp;

	ackp = (MSG_EVENT_ACK *)ack_req->req_vbuf;
	FUNC1(ackp, 0, sizeof (*ackp));
	ackp->Function = MPI_FUNCTION_EVENT_ACK;
	ackp->Event = FUNC0(msg->Event);
	ackp->EventContext = FUNC0(msg->EventContext);
	ackp->MsgContext = FUNC0(context);
	FUNC2(mpt);
	FUNC3(mpt, ack_req);
}