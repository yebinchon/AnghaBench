#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mpt_softc {int dummy; } ;
struct TYPE_6__ {int index; TYPE_2__* req_vbuf; } ;
typedef  TYPE_1__ request_t ;
struct TYPE_7__ {int Switch; int /*<<< orphan*/  MsgContext; int /*<<< orphan*/  Function; } ;
typedef  TYPE_2__ MSG_EVENT_NOTIFY ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MPI_FUNCTION_EVENT_NOTIFICATION ; 
 int /*<<< orphan*/  MPT_PRT_DEBUG ; 
 int MPT_REPLY_HANDLER_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mpt_softc*) ; 
 TYPE_1__* FUNC3 (struct mpt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mpt_softc*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mpt_softc*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(struct mpt_softc *mpt, int onoff)
{
	request_t *req;
	MSG_EVENT_NOTIFY *enable_req;

	req = FUNC3(mpt, FALSE);
	if (req == NULL) {
		return (ENOMEM);
	}
	enable_req = req->req_vbuf;
	FUNC1(enable_req, 0, sizeof *enable_req);

	enable_req->Function   = MPI_FUNCTION_EVENT_NOTIFICATION;
	enable_req->MsgContext = FUNC0(req->index | MPT_REPLY_HANDLER_EVENTS);
	enable_req->Switch     = onoff;

	FUNC2(mpt);
	FUNC4(mpt, MPT_PRT_DEBUG, "%sabling async events\n",
	    onoff ? "en" : "dis");
	/*
	 * Send the command off, but don't wait for it.
	 */
	FUNC5(mpt, req);
	return (0);
}