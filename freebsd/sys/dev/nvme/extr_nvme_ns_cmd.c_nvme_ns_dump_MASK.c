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
typedef  size_t uint64_t ;
struct nvme_command {int dummy; } ;
struct nvme_request {int /*<<< orphan*/ * qpair; struct nvme_command cmd; } ;
struct nvme_namespace {int /*<<< orphan*/  ctrlr; int /*<<< orphan*/  id; } ;
struct nvme_completion_poll_status {scalar_t__ done; } ;
typedef  size_t off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  NVD_DUMP_TIMEOUT ; 
 struct nvme_request* FUNC1 (void*,size_t,int /*<<< orphan*/ ,struct nvme_completion_poll_status*) ; 
 int /*<<< orphan*/  nvme_completion_poll_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nvme_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_command*,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (struct nvme_namespace*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_command*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct nvme_namespace *ns, void *virt, off_t offset, size_t len)
{
	struct nvme_completion_poll_status status;
	struct nvme_request *req;
	struct nvme_command *cmd;
	uint64_t lba, lba_count;
	int i;

	status.done = FALSE;
	req = FUNC1(virt, len, nvme_completion_poll_cb,
	    &status);
	if (req == NULL)
		return (ENOMEM);

	cmd = &req->cmd;

	if (len > 0) {
		lba = offset / FUNC4(ns);
		lba_count = len / FUNC4(ns);
		FUNC5(cmd, ns->id, lba, lba_count);
	} else
		FUNC3(cmd, ns->id);

	FUNC2(ns->ctrlr, req);
	if (req->qpair == NULL)
		return (ENXIO);

	i = 0;
	while ((i++ < NVD_DUMP_TIMEOUT) && (status.done == FALSE)) {
		FUNC0(5);
		FUNC6(req->qpair);
	}

	/*
	 * Normally, when using the polling interface, we can't return a
	 * timeout error because we don't know when the completion routines
	 * will be called if the command later completes. However, in this
	 * case we're running a system dump, so all interrupts are turned
	 * off, the scheduler isn't running so there's nothing to complete
	 * the transaction.
	 */
	if (status.done == FALSE)
		return (ETIMEDOUT);

	return (0);
}