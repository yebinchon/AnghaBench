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
typedef  int uint32_t ;
struct nvme_request {int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* cb_fn ) (int /*<<< orphan*/ ,struct nvme_completion*) ;int /*<<< orphan*/  cmd; } ;
struct nvme_qpair {int /*<<< orphan*/  id; } ;
struct nvme_completion {int status; int /*<<< orphan*/  sqid; } ;
typedef  int /*<<< orphan*/  cpl ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int NVME_STATUS_SCT_MASK ; 
 int NVME_STATUS_SCT_SHIFT ; 
 int NVME_STATUS_SC_MASK ; 
 int NVME_STATUS_SC_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct nvme_completion*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct nvme_completion*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_qpair*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_qpair*,struct nvme_completion*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct nvme_completion*) ; 

void
FUNC6(struct nvme_qpair *qpair,
    struct nvme_request *req, uint32_t sct, uint32_t sc)
{
	struct nvme_completion	cpl;
	boolean_t		error;

	FUNC0(&cpl, 0, sizeof(cpl));
	cpl.sqid = qpair->id;
	cpl.status |= (sct & NVME_STATUS_SCT_MASK) << NVME_STATUS_SCT_SHIFT;
	cpl.status |= (sc & NVME_STATUS_SC_MASK) << NVME_STATUS_SC_SHIFT;

	error = FUNC1(&cpl);

	if (error) {
		FUNC3(qpair, &req->cmd);
		FUNC4(qpair, &cpl);
	}

	if (req->cb_fn)
		req->cb_fn(req->cb_arg, &cpl);

	FUNC2(req);
}