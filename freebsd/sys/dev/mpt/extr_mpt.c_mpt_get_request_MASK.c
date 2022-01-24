#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct mpt_softc {int getreqwaiter; int /*<<< orphan*/  request_free_list; TYPE_1__* request_pool; } ;
struct TYPE_7__ {size_t index; scalar_t__ state; int /*<<< orphan*/ * chain; scalar_t__ req_vbuf; int /*<<< orphan*/  serno; } ;
typedef  TYPE_1__ request_t ;
struct TYPE_8__ {int /*<<< orphan*/  Function; } ;
typedef  TYPE_2__ MSG_REQUEST_HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_softc*) ; 
 int /*<<< orphan*/  PUSER ; 
 scalar_t__ REQ_STATE_ALLOCATED ; 
 scalar_t__ REQ_STATE_FREE ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC4 (struct mpt_softc*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct mpt_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

request_t *
FUNC6(struct mpt_softc *mpt, int sleep_ok)
{
	request_t *req;

retry:
	FUNC1(mpt);
	req = FUNC2(&mpt->request_free_list);
	if (req != NULL) {
		FUNC0(req == &mpt->request_pool[req->index],
		    ("mpt_get_request: corrupted request free list"));
		FUNC0(req->state == REQ_STATE_FREE,
		    ("req %p:%u not free on free list %x index %d function %x",
		    req, req->serno, req->state, req->index,
		    ((MSG_REQUEST_HEADER *)req->req_vbuf)->Function));
		FUNC3(&mpt->request_free_list, req, links);
		req->state = REQ_STATE_ALLOCATED;
		req->chain = NULL;
		FUNC4(mpt, req);
	} else if (sleep_ok != 0) {
		mpt->getreqwaiter = 1;
		FUNC5(mpt, &mpt->request_free_list, PUSER, "mptgreq", 0);
		goto retry;
	}
	return (req);
}