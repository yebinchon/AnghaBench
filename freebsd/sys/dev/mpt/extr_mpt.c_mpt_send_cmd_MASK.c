#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct mpt_softc {scalar_t__ verbose; int /*<<< orphan*/  request_pending_list; int /*<<< orphan*/  request_dmap; int /*<<< orphan*/  request_dmat; } ;
struct TYPE_8__ {scalar_t__ req_pbuf; scalar_t__ req_vbuf; int /*<<< orphan*/  serno; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ request_t ;
struct TYPE_9__ {int /*<<< orphan*/  Function; } ;
typedef  TYPE_2__ MSG_REQUEST_HEADER ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MPT_OFFSET_REQUEST_Q ; 
 scalar_t__ MPT_PRT_DEBUG2 ; 
 int /*<<< orphan*/  REQ_STATE_QUEUED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC3 (struct mpt_softc*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (struct mpt_softc*,TYPE_1__*) ; 
 scalar_t__ FUNC5 (struct mpt_softc*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct mpt_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(struct mpt_softc *mpt, request_t *req)
{

	if (mpt->verbose > MPT_PRT_DEBUG2) {
		FUNC3(mpt, req);
	}
	FUNC2(mpt->request_dmat, mpt->request_dmap,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
	req->state |= REQ_STATE_QUEUED;
	FUNC0(FUNC4(mpt, req) == 0,
	    ("req %p:%u func %x on freelist list in mpt_send_cmd",
	    req, req->serno, ((MSG_REQUEST_HEADER *)req->req_vbuf)->Function));
	FUNC0(FUNC5(mpt, req) == 0,
	    ("req %p:%u func %x already on pending list in mpt_send_cmd",
	    req, req->serno, ((MSG_REQUEST_HEADER *)req->req_vbuf)->Function));
	FUNC1(&mpt->request_pending_list, req, links);
	FUNC6(mpt, MPT_OFFSET_REQUEST_Q, (uint32_t) req->req_pbuf);
}