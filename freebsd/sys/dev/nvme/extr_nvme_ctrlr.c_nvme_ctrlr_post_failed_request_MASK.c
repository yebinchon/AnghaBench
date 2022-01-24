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
struct nvme_request {int dummy; } ;
struct nvme_controller {int /*<<< orphan*/  fail_req_task; int /*<<< orphan*/  taskqueue; int /*<<< orphan*/  lock; int /*<<< orphan*/  fail_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct nvme_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stailq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC4(struct nvme_controller *ctrlr,
    struct nvme_request *req)
{

	FUNC1(&ctrlr->lock);
	FUNC0(&ctrlr->fail_req, req, stailq);
	FUNC2(&ctrlr->lock);
	FUNC3(ctrlr->taskqueue, &ctrlr->fail_req_task);
}