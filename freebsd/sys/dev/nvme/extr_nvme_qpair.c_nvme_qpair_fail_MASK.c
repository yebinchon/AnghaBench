#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nvme_tracker {int dummy; } ;
struct nvme_request {int dummy; } ;
struct nvme_qpair {int /*<<< orphan*/  lock; int /*<<< orphan*/  ctrlr; int /*<<< orphan*/  outstanding_tr; int /*<<< orphan*/  queued_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  DO_NOT_RETRY ; 
 int /*<<< orphan*/  ERROR_PRINT_ALL ; 
 int /*<<< orphan*/  NVME_SCT_GENERIC ; 
 int /*<<< orphan*/  NVME_SC_ABORTED_BY_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nvme_request* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct nvme_tracker* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct nvme_qpair*,struct nvme_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nvme_qpair*,struct nvme_tracker*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stailq ; 

void
FUNC11(struct nvme_qpair *qpair)
{
	struct nvme_tracker		*tr;
	struct nvme_request		*req;

	if (!FUNC5(&qpair->lock))
		return;

	FUNC6(&qpair->lock);

	while (!FUNC0(&qpair->queued_req)) {
		req = FUNC1(&qpair->queued_req);
		FUNC2(&qpair->queued_req, stailq);
		FUNC8(qpair->ctrlr, "failing queued i/o\n");
		FUNC7(&qpair->lock);
		FUNC9(qpair, req, NVME_SCT_GENERIC,
		    NVME_SC_ABORTED_BY_REQUEST);
		FUNC6(&qpair->lock);
	}

	/* Manually abort each outstanding I/O. */
	while (!FUNC3(&qpair->outstanding_tr)) {
		tr = FUNC4(&qpair->outstanding_tr);
		/*
		 * Do not remove the tracker.  The abort_tracker path will
		 *  do that for us.
		 */
		FUNC8(qpair->ctrlr, "failing outstanding i/o\n");
		FUNC7(&qpair->lock);
		FUNC10(qpair, tr, NVME_SCT_GENERIC,
		    NVME_SC_ABORTED_BY_REQUEST, DO_NOT_RETRY, ERROR_PRINT_ALL);
		FUNC6(&qpair->lock);
	}

	FUNC7(&qpair->lock);
}