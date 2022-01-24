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
struct nvme_request {int /*<<< orphan*/  qpair; } ;
struct nvme_controller {int /*<<< orphan*/  lock; int /*<<< orphan*/  fail_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_SCT_GENERIC ; 
 int /*<<< orphan*/  NVME_SC_ABORTED_BY_REQUEST ; 
 struct nvme_request* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nvme_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stailq ; 

__attribute__((used)) static void
FUNC5(void *arg, int pending)
{
	struct nvme_controller	*ctrlr = arg;
	struct nvme_request	*req;

	FUNC2(&ctrlr->lock);
	while ((req = FUNC0(&ctrlr->fail_req)) != NULL) {
		FUNC1(&ctrlr->fail_req, stailq);
		FUNC3(&ctrlr->lock);
		FUNC4(req->qpair, req,
		    NVME_SCT_GENERIC, NVME_SC_ABORTED_BY_REQUEST);
		FUNC2(&ctrlr->lock);
	}
	FUNC3(&ctrlr->lock);
}