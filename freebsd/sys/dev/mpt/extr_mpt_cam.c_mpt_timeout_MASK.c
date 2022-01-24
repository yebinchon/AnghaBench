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
struct TYPE_6__ {TYPE_2__* ccb_req_ptr; struct mpt_softc* ccb_mpt_ptr; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct mpt_softc {int /*<<< orphan*/  request_timeout_list; int /*<<< orphan*/  request_pending_list; } ;
struct TYPE_7__ {int state; int /*<<< orphan*/  ccb; int /*<<< orphan*/  serno; } ;
typedef  TYPE_2__ request_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mpt_softc*) ; 
 int REQ_STATE_QUEUED ; 
 int REQ_STATE_TIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC3 (struct mpt_softc*,char*,TYPE_2__*,int /*<<< orphan*/ ,union ccb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mpt_softc*) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	union ccb	 *ccb;
	struct mpt_softc *mpt;
	request_t	 *req;

	ccb = (union ccb *)arg;
	mpt = ccb->ccb_h.ccb_mpt_ptr;

	FUNC0(mpt);
	req = ccb->ccb_h.ccb_req_ptr;
	FUNC3(mpt, "request %p:%u timed out for ccb %p (req->ccb %p)\n", req,
	    req->serno, ccb, req->ccb);
/* XXX: WHAT ARE WE TRYING TO DO HERE? */
	if ((req->state & REQ_STATE_QUEUED) == REQ_STATE_QUEUED) {
		FUNC2(&mpt->request_pending_list, req, links);
		FUNC1(&mpt->request_timeout_list, req, links);
		req->state |= REQ_STATE_TIMEDOUT;
		FUNC4(mpt);
	}
}