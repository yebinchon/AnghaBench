#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nvme_tracker {size_t cid; int /*<<< orphan*/  timer; struct nvme_request* req; } ;
struct TYPE_2__ {size_t cid; } ;
struct nvme_request {TYPE_1__ cmd; scalar_t__ timeout; } ;
struct nvme_qpair {size_t sq_tail; size_t num_entries; int /*<<< orphan*/  num_cmds; int /*<<< orphan*/  sq_tdbl_off; struct nvme_controller* ctrlr; int /*<<< orphan*/  queuemem_map; int /*<<< orphan*/  dma_tag; int /*<<< orphan*/ * cmd; int /*<<< orphan*/  cpu; struct nvme_tracker** act_tr; int /*<<< orphan*/  lock; } ;
struct nvme_controller {int timeout_period; int /*<<< orphan*/  bus_handle; int /*<<< orphan*/  bus_tag; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct nvme_tracker*,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvme_timeout ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(struct nvme_qpair *qpair, struct nvme_tracker *tr)
{
	struct nvme_request	*req;
	struct nvme_controller	*ctrlr;

	FUNC4(&qpair->lock, MA_OWNED);

	req = tr->req;
	req->cmd.cid = tr->cid;
	qpair->act_tr[tr->cid] = tr;
	ctrlr = qpair->ctrlr;

	if (req->timeout)
		FUNC2(&tr->timer, ctrlr->timeout_period * hz,
		    nvme_timeout, tr, qpair->cpu);

	/* Copy the command from the tracker to the submission queue. */
	FUNC3(&qpair->cmd[qpair->sq_tail], &req->cmd, sizeof(req->cmd));

	if (++qpair->sq_tail == qpair->num_entries)
		qpair->sq_tail = 0;

	FUNC0(qpair->dma_tag, qpair->queuemem_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
#ifndef __powerpc__
	/*
	 * powerpc's bus_dmamap_sync() already includes a heavyweight sync, but
	 * no other archs do.
	 */
	FUNC5();
#endif

	FUNC1(qpair->ctrlr->bus_tag, qpair->ctrlr->bus_handle,
	    qpair->sq_tdbl_off, qpair->sq_tail);
	qpair->num_cmds++;
}