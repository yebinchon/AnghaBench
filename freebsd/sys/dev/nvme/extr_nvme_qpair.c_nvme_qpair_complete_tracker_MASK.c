#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nvme_tracker {struct nvme_request* req; int /*<<< orphan*/  payload_dma_map; int /*<<< orphan*/  timer; } ;
struct TYPE_4__ {scalar_t__ cid; } ;
struct nvme_request {scalar_t__ retries; scalar_t__ type; int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* cb_fn ) (int /*<<< orphan*/ ,struct nvme_completion*) ;TYPE_2__ cmd; } ;
struct nvme_qpair {int /*<<< orphan*/  lock; int /*<<< orphan*/  queued_req; TYPE_1__* ctrlr; int /*<<< orphan*/  free_tr; int /*<<< orphan*/  outstanding_tr; int /*<<< orphan*/  dma_tag_payload; int /*<<< orphan*/ ** act_tr; int /*<<< orphan*/  num_failures; int /*<<< orphan*/  num_retries; } ;
struct nvme_completion {size_t cid; } ;
typedef  scalar_t__ error_print_t ;
typedef  int boolean_t ;
struct TYPE_3__ {int /*<<< orphan*/  is_resetting; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 scalar_t__ ERROR_PRINT_ALL ; 
 scalar_t__ ERROR_PRINT_NO_RETRY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ NVME_REQUEST_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nvme_request* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct nvme_tracker*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct nvme_tracker*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_qpair*,struct nvme_request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct nvme_completion*) ; 
 int FUNC13 (struct nvme_completion*) ; 
 int /*<<< orphan*/  FUNC14 (struct nvme_request*) ; 
 int /*<<< orphan*/  FUNC15 (struct nvme_qpair*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (struct nvme_qpair*,struct nvme_completion*) ; 
 int /*<<< orphan*/  FUNC17 (struct nvme_qpair*,struct nvme_tracker*) ; 
 scalar_t__ nvme_retry_count ; 
 int /*<<< orphan*/  stailq ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct nvme_completion*) ; 
 int /*<<< orphan*/  tailq ; 

__attribute__((used)) static void
FUNC19(struct nvme_qpair *qpair, struct nvme_tracker *tr,
    struct nvme_completion *cpl, error_print_t print_on_error)
{
	struct nvme_request	*req;
	boolean_t		retry, error, retriable;

	req = tr->req;
	error = FUNC12(cpl);
	retriable = FUNC13(cpl);
	retry = error && retriable && req->retries < nvme_retry_count;
	if (retry)
		qpair->num_retries++;
	if (error && req->retries >= nvme_retry_count && retriable)
		qpair->num_failures++;

	if (error && (print_on_error == ERROR_PRINT_ALL ||
		(!retry && print_on_error == ERROR_PRINT_NO_RETRY))) {
		FUNC15(qpair, &req->cmd);
		FUNC16(qpair, cpl);
	}

	qpair->act_tr[cpl->cid] = NULL;

	FUNC0(cpl->cid == req->cmd.cid, ("cpl cid does not match cmd cid\n"));

	if (req->cb_fn && !retry)
		req->cb_fn(req->cb_arg, cpl);

	FUNC10(&qpair->lock);
	FUNC9(&tr->timer);

	if (retry) {
		req->retries++;
		FUNC17(qpair, tr);
	} else {
		if (req->type != NVME_REQUEST_NULL) {
			FUNC7(qpair->dma_tag_payload,
			    tr->payload_dma_map,
			    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
			FUNC8(qpair->dma_tag_payload,
			    tr->payload_dma_map);
		}

		FUNC14(req);
		tr->req = NULL;

		FUNC5(&qpair->outstanding_tr, tr, tailq);
		FUNC4(&qpair->free_tr, tr, tailq);

		/*
		 * If the controller is in the middle of resetting, don't
		 *  try to submit queued requests here - let the reset logic
		 *  handle that instead.
		 */
		if (!FUNC1(&qpair->queued_req) &&
		    !qpair->ctrlr->is_resetting) {
			req = FUNC2(&qpair->queued_req);
			FUNC3(&qpair->queued_req, stailq);
			FUNC6(qpair, req);
		}
	}

	FUNC11(&qpair->lock);
}